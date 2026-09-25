using UnityEngine;
using UnityEngine.InputSystem;
using TMPro;
using System;
using Unity.VisualScripting;

public class GUN : MonoBehaviour
{
    public GameObject gun;
    public GameObject mainCam;
    public GameObject fish;
    public GameObject spear;
    private GameObject reelButton;
    public GameObject fishPrefab;
    public GameObject spearPrefab;
    public GameObject reelButtonPrefab;
    public GameObject rightClickGraphic;
    public GameObject scrollGraphic;
    public Transform spearBasePos;
    public TextMeshProUGUI caughtText;
    public float baseButtonChance;
    int caught = 0;
    Vector3 gunStartingPos;
    Vector3 gunStartingRot;

    public int reelingThreshold;
    private float aiming;
    private float reelInterval;
    private float perIntervalReelPower = 0;
    private float reelButtonBuffer = 1;
    private float fishRespawnTimer = 8;
    public float shotSpeed;
    private bool reelSucceed = false;
    public bool reeling;
    bool returning = false;
    GameObject spearProjectile;
    Rigidbody spearRigidbody;

    public PlayerControls controls;
    private InputAction aim;
    private InputAction fire;
    private InputAction reel;

    private GameManager gameManager;

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
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();
    }

    private void Update()
    {
        if (!reeling)
        {
            aiming = aim.ReadValue<float>();
            if (aiming == 1 && fire.WasPressedThisFrame() && spearProjectile == null)
            {
                ShootGun();
            }
            if (aiming != 1 && fire.WasPressedThisFrame() == true)
            {
                rightClickGraphic.SetActive(true);
            }

            if (aiming == 1 && spearProjectile == null)
            {
                gun.transform.localPosition = new Vector3(0, -0.43f, 0.54f);
                gun.transform.localEulerAngles = new Vector3(0, 180, 0);
                rightClickGraphic.SetActive(false);
            }
            else if (aiming == 0 || spearProjectile != null)
            {
                gun.transform.localPosition = gunStartingPos;
                gun.transform.localEulerAngles = gunStartingRot;
            }

            if (fish == null)
            {
                fishRespawnTimer -= Time.deltaTime * Math.Pow(2, gameManager.itemsLevel[2]).ConvertTo<float>();
            }
            if (fishRespawnTimer <= 0)
            {
                SpawnFish();
                fishRespawnTimer = 8;
            }

            caughtText.text = $"Fish Caught: {caught} ";
        }

        if (reeling)
        {
            if (fish == null)
            {
                reeling = false;
                return;
            }
            float strength = fish.GetComponent<FishBehavior>().sizeModifier / ((gameManager.itemsLevel[1] / 2) + 0.5f);

            gun.transform.localPosition = gunStartingPos;
            gun.transform.localEulerAngles = gunStartingRot;

            spearProjectile.transform.position = fish.transform.position;

            perIntervalReelPower += reel.ReadValue<float>();
            reelInterval -= Time.deltaTime;
            reelButtonBuffer -= Time.deltaTime * strength;

            if (reelButton == null) scrollGraphic.SetActive(true);
            else if (reelButton != null) scrollGraphic.SetActive(false);

            if (perIntervalReelPower > reelingThreshold * strength && reelButton == null)
                reelSucceed = true;

            float clickChance = strength * baseButtonChance;
            for (int i = 0; i < reel.ReadValue<float>(); i++)
            {
                if (UnityEngine.Random.Range(0.00f, 100.00f) <= clickChance && reelButton == null && reelButtonBuffer <= 0)
                {
                    reelButton = Instantiate(reelButtonPrefab, GameObject.Find("Canvas").transform);
                    reelButtonBuffer = 1.5f;
                }
            }

            if (reelInterval <= 0)
            {
                reelInterval = 0.25f;
                perIntervalReelPower = 0;
                if (reelSucceed == false)
                {
                    fish.GetComponent<FishBehavior>().reelModifier = -1 * strength;
                }
                else if (reelSucceed == true)
                {
                    fish.GetComponent<FishBehavior>().reelModifier = 0.8f / strength;
                    reelSucceed = false;
                }
            }

            if (fish.transform.position.y >= 0.2f)
            {
                catchFish();
                reeling = false;
                Cursor.lockState = CursorLockMode.Locked;
                Cursor.visible = false;
                if (reelButton != null) Destroy(reelButton);
            }
            //if (Vector3.Distance(fish.transform.position, transform.position) > 10)
            //{
            //    reeling = false;
            //    Cursor.lockState = CursorLockMode.Locked;
            //    Cursor.visible = false;
            //    if (reelButton != null) Destroy(reelButton);
            //    returning = true;
            //}
        }
    }
    private void FixedUpdate()
    {
        if (spearProjectile != null && !reeling) // Spear projectile logic
        {
            if (spearRigidbody.linearVelocity != Vector3.zero && spearProjectile.transform.position != spearBasePos.position
                && !returning) // The spear shooting outward
            {
                spearRigidbody.linearVelocity = Vector3.MoveTowards(spearRigidbody.linearVelocity, Vector3.zero, shotSpeed * 2);
                //Debug.Log("A");
            }
            else if (spearProjectile.transform.position != spearBasePos.position && returning) // The spear returning to the gun
            {
                spearProjectile.transform.position = Vector3.MoveTowards(spearProjectile.transform.position, spearBasePos.position, shotSpeed);
                //Debug.Log("B");
            }
            else if (spearRigidbody.linearVelocity == Vector3.zero) // When the spear hits its apex without finding a fish
            {
                returning = true;
                MissFish();
                //Debug.Log("C");
            }
            if (spearProjectile.transform.position == spearBasePos.position && returning == true) // Return the spear to the gun
            {
                spear.SetActive(true);
                Destroy(spearProjectile);
                returning = false;
                //Debug.Log("D");
            }

            if (spearProjectile.GetComponent<SpearHitDetect>().hitFish && !returning) // If the spear hits the fish
            {
                HitFish();
                //Debug.Log("E");
            }
            else if (spearProjectile.GetComponent<SpearHitDetect>().hitOther && !returning) // If the spear hits something else
            {
                returning = true;
                MissFish();
                //Debug.Log("F");
            }
        }
        //if (reeling)
        //{

        //}
    }

    void ShootGun()
    {
        spear.SetActive(false);

        spearProjectile = Instantiate(spearPrefab, spearBasePos.position, 
            Quaternion.Euler(transform.eulerAngles.x - 90, transform.eulerAngles.y, transform.eulerAngles.z));
        spearRigidbody = spearProjectile.GetComponent<Rigidbody>();
        spearRigidbody.linearVelocity = transform.forward * shotSpeed * -40;
    }
    private void HitFish()
    {
        reeling = true;
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        GameObject.FindWithTag("Fish").GetComponent<FishBehavior>().AILevel = 3;
    }
    private void MissFish()
    {
        if (GameObject.FindWithTag("Fish").GetComponent<FishBehavior>().AILevel != 2) 
            GameObject.FindWithTag("Fish").GetComponent<FishBehavior>().AILevel = 1;
    }
    void catchFish()
    {
        caught++;
        Destroy(fish);
        Destroy(spearProjectile);
        spear.SetActive(true);
        returning = false;
        scrollGraphic.SetActive(false);
    }
    void SpawnFish()
    {
        fish = Instantiate(fishPrefab);
    }
    public void BreakAwayFish()
    {
        reeling = false;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        if (reelButton != null) Destroy(reelButton);
        spearProjectile.GetComponent<SpearHitDetect>().hitFish = false;
        returning = true;
        scrollGraphic.SetActive(false);
    }
}
