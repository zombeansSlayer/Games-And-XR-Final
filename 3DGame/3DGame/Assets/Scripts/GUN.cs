using UnityEngine;
using UnityEngine.InputSystem;
using TMPro;
using System;
using Unity.VisualScripting;
using System.Collections.Generic;

public class GUN : MonoBehaviour
{
    public GameObject gun;
    public GameObject mainCam;
    public GameObject fish;
    public GameObject spear;
    private List<GameObject> reelButton = new List<GameObject> { };
    public GameObject fishPrefab;
    public GameObject spearPrefab;
    public GameObject reelButtonPrefab;
    public GameObject rightClickGraphic;
    public GameObject scrollGraphic;
    public GameObject exitToMarketConfirm;
    public Transform spearBasePos;
    public TextMeshProUGUI caughtText;
    public float baseButtonChance;
    int caught = 0;
    Vector3 gunStartingPos;
    Vector3 gunStartingRot;

    public int reelingThreshold;
    private float aiming;
    private float reelTimer;
    private float reelButtonBuffer = 1;
    private float fishRespawnTimer = 8;
    public float shotSpeed;
    public bool atWheel = false;
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
        if (gameManager.paused)
            return;

        if (!reeling)
        {
            aiming = aim.ReadValue<float>();
            if (aiming == 1 && fire.WasPressedThisFrame() && spearProjectile == null)
            {
                ShootGun();
            }
            if (aiming != 1 && fire.WasPressedThisFrame() == true && !atWheel)
            {
                rightClickGraphic.SetActive(true);
            }
            else if (aiming != 1 && fire.WasPressedThisFrame() == true && atWheel)
            {
                exitToMarketConfirm.SetActive(true);
                gameManager.CursorLock(false);
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
                fishRespawnTimer -= Time.deltaTime;
            }
            if (fishRespawnTimer <= 0)
            {
                SpawnFish();
                fishRespawnTimer = 10 - (gameManager.itemsLevel[2] * 2);
                if (fishRespawnTimer <= 0)
                    fishRespawnTimer = 0.01f;
            }

            caughtText.text = $"Caught: {caught} ";
        }

        if (reeling)
        {
            if (fish == null)
            {
                reeling = false;
                return;
            }
            for (int i = 0; i < reelButton.Count; i++)
            {
                if (reelButton[i] == null)
                {
                    reelButton.RemoveAt(i);
                }
            }
            float strength = fish.GetComponent<FishBehavior>().sizeModifier / ((gameManager.itemsLevel[1] / 3) + 1f);

            gun.transform.localPosition = gunStartingPos;
            gun.transform.localEulerAngles = gunStartingRot;

            spearProjectile.transform.position = fish.transform.position;

            //perIntervalReelPower += reel.ReadValue<float>();
            reelTimer -= Time.deltaTime;

            if (reelButton.Count == 0)
                reelButtonBuffer -= Time.deltaTime * strength;

            if (reelButton.Count == 0) scrollGraphic.SetActive(true);
            else if (reelButton.Count > 0) scrollGraphic.SetActive(false);

            if (reel.ReadValue<float>() > 0 && reelButton.Count == 0 && reelTimer > 0 
                || reel.ReadValue<float>() > 0 && reelButton.Count == 0 && reelTimer < -0.75f)
            {
                reelTimer = 0.3f;
            }

            if (reelTimer < -0.75f)
            {
                fish.GetComponent<FishBehavior>().reelModifier = -1 * strength;
            }
            else if (reelTimer <= 0)
            {
                fish.GetComponent<FishBehavior>().reelModifier = -3 * strength;
            }
            else if (reelTimer > 0)
            {
                fish.GetComponent<FishBehavior>().reelModifier = 1f / strength;
            }

            if (fish.transform.position.y >= 0.2f)
            {
                catchFish();
                reelTimer = 0;
                reeling = false;
                gameManager.CursorLock(true);
                if (reelButton.Count > 0)
                {
                    foreach (var button in reelButton)
                    {
                        Destroy(button);
                    }
                }
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
        if (gameManager.paused)
        {
            if (spearProjectile != null)
                spearRigidbody.linearVelocity = Vector3.zero;
            return;
        }

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

        if (reeling)
        {
            if (fish == null)
            {
                reeling = false;
                return;
            }
            float strength = fish.GetComponent<FishBehavior>().sizeModifier / ((gameManager.itemsLevel[1] / 3) + 1f);

            float clickChance = 3;

            if (UnityEngine.Random.Range(0, 100) <= clickChance && reelButton.Count == 0 && reelButtonBuffer <= 0)
            {
                for (int i = 0; i < UnityEngine.Random.Range(2, 5); i++)
                {
                    reelButton.Add(Instantiate(reelButtonPrefab, GameObject.Find("ReelButtonLayer").transform));
                }
                reelTimer = -0.5f;
                reelButtonBuffer = 3 * strength;
            }
        }
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
        if (Vector3.Distance(transform.position, fish.transform.position) < 5)
            reelTimer = 0;
        reeling = true;
        gameManager.CursorLock(false);
        fish.GetComponent<FishBehavior>().AILevel = 3;
    }
    private void MissFish()
    {
        if (fish != null && fish.GetComponent<FishBehavior>().AILevel != 2) 
            fish.GetComponent<FishBehavior>().AILevel = 1;
    }
    void catchFish()
    {
        caught++;
        gameManager.fishInventory.Add(fish.GetComponent<FishBehavior>().sizeModifier);
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
        gameManager.CursorLock(true);
        if (reelButton.Count > 0)
        {
            foreach (var button in reelButton)
            {
                Destroy(button);
            }
        }
        spearProjectile.GetComponent<SpearHitDetect>().hitFish = false;
        returning = true;
        scrollGraphic.SetActive(false);
    }
}
