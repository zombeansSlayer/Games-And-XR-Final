using UnityEngine;
using UnityEngine.InputSystem;
using TMPro;

public class GUN : MonoBehaviour
{
    public GameObject gun;
    public GameObject mainCam;
    public GameObject fish;
    public GameObject rightClickGraphic;
    public TextMeshProUGUI hitMissText;
    Vector2 hitMiss = Vector2.zero;
    Vector3 gunStartingPos;
    Vector3 gunStartingRot;
    public LayerMask layersThatCanHit;

    private float aiming;

    public PlayerControls controls;
    private InputAction aim;
    private InputAction fire;

    private void OnEnable()
    {
        aim = controls.Player.Aim;
        fire = controls.Player.Fire;

        aim.Enable();
        fire.Enable();
    }

    private void OnDisable()
    {
        aim.Disable();
        fire.Disable();
    }

    private void Awake()
    {
        controls = new PlayerControls();
    }

    private void Start()
    {
        gunStartingPos = gun.transform.localPosition;
        gunStartingRot = gun.transform.localEulerAngles;
    }

    private void Update()
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

        hitMissText.text = $"Hit: {hitMiss.x} " +
            $"Miss: {hitMiss.y}";
    }

    void ShootGun()
    {
        RaycastHit hit;
        if (Physics.Raycast(mainCam.transform.position, mainCam.transform.TransformDirection(Vector3.forward), out hit, Mathf.Infinity, layersThatCanHit))
        {
            hitMiss.x++;
            Destroy(hit.collider.gameObject);
            Instantiate(fish);
        }
        else
        {
            hitMiss.y++;
        }
    }
}
