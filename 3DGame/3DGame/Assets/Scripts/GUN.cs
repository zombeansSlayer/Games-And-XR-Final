using UnityEngine;
using UnityEngine.InputSystem;
using TMPro;

public class GUN : MonoBehaviour
{
    public GameObject gun;
    public GameObject mainCam;
    public GameObject fish;
    public GameObject spear;
    public GameObject fishPrefab;
    public GameObject rightClickGraphic;
    public TextMeshProUGUI caughtText;
    int caught = 0;
    Vector3 gunStartingPos;
    Vector3 gunStartingRot;
    public LayerMask layersThatCanHit;

    public int reelingThreshold;
    private float aiming;
    public bool reeling;
    private float reelInterval;
    private Animator anim;
    private bool reelSucceed = false;
    private float perIntervalReelPower = 0;

    public PlayerControls controls;
    private InputAction aim;
    private InputAction fire;
    private InputAction reel;

    private void OnEnable()
    {
        aim = controls.Player.Aim;
        fire = controls.Player.Fire;
        reel = controls.Player.Reel;

        aim.Enable();
        fire.Enable();
        reel.Enable();
    }

    private void OnDisable()
    {
        aim.Disable();
        fire.Disable();
        reel.Disable();
    }

    private void Awake()
    {
        controls = new PlayerControls();
    }

    private void Start()
    {
        gunStartingPos = gun.transform.localPosition;
        gunStartingRot = gun.transform.localEulerAngles;
        anim = gameObject.GetComponent<Animator>();
    }

    private void Update()
    {
        if (!reeling)
        {
            aiming = aim.ReadValue<float>();
            if (aiming == 1 && fire.WasPressedThisFrame())
            {
                ShootGun();
            }
            if (aiming != 1 && fire.WasPressedThisFrame() == true)
            {
                rightClickGraphic.SetActive(true);
            }

            if (aiming == 1)
            {
                gun.transform.localPosition = new Vector3(0, -0.43f, 0.54f);
                gun.transform.localEulerAngles = new Vector3(0, 180, 0);
                rightClickGraphic.SetActive(false);
            }
            else if (aiming == 0)
            {
                gun.transform.localPosition = gunStartingPos;
                gun.transform.localEulerAngles = gunStartingRot;
            }

            caughtText.text = $"Fish Caught: {caught} ";
        }

        if (reeling)
        {
            gun.transform.localPosition = gunStartingPos;
            gun.transform.localEulerAngles = gunStartingRot;
            spear.transform.position = fish.transform.position;
            perIntervalReelPower += reel.ReadValue<float>();
            reelInterval -= Time.deltaTime;
            if (perIntervalReelPower > reelingThreshold)
                reelSucceed = true;
            if (reelInterval <= 0)
            {
                reelInterval = 0.25f;
                perIntervalReelPower = 0;
                if (reelSucceed == false)
                {
                    fish.GetComponent<FishBehavior>().reelModifier = -1;
                }
                else if (reelSucceed == true)
                {
                    fish.GetComponent<FishBehavior>().reelModifier = 0.4f;
                    reelSucceed = false;
                }
            }
            if (fish.transform.position.y >= 0.2f)
            {
                catchFish();
                reeling = false;
            }
        }
    }

    void ShootGun()
    {
        anim.SetTrigger("Fire");
    }
    public void CheckForHit()
    {
        RaycastHit hit;
        if (Physics.Raycast(mainCam.transform.position, mainCam.transform.TransformDirection(Vector3.forward), out hit, Mathf.Infinity, layersThatCanHit))
        {
            HitFish();
        }
        else
        {
            MissFish();
        }
    }
    private void HitFish()
    {
        anim.SetBool("HitFish", true);
        reeling = true;
        GameObject.FindWithTag("Fish").GetComponent<FishBehavior>().AILevel = 3;
    }
    private void MissFish()
    {
        anim.SetBool("HitFish", false);
        if (GameObject.FindWithTag("Fish").GetComponent<FishBehavior>().AILevel != 2) 
            GameObject.FindWithTag("Fish").GetComponent<FishBehavior>().AILevel = 1;
    }
    void catchFish()
    {
        caught++;
        Destroy(fish);
        fish = Instantiate(fishPrefab);
    }
}
