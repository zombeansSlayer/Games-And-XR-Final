using UnityEngine;
using UnityEngine.InputSystem;
using TMPro;
using System;
using Unity.VisualScripting;
using System.Collections.Generic;
using UnityEngine.UI;

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
    public GameObject reelButtonPrefabCT;
    public GameObject rippleSpawnerPrefab;

    public GameObject rightClickGraphic;
    public GameObject scrollGraphic;
    public GameObject exitToMarketConfirm;
    private GameObject rippleSpawner;

    public Transform spearBasePos;
    public TextMeshProUGUI caughtText;
    public float baseButtonChance;
    int caught = 0;
    Vector3 gunStartingPos;
    Vector3 gunStartingRot;

    public int reelingThreshold;
    [HideInInspector] public bool aiming;
    private float reelTimer;
    private float reelButtonBuffer = 1;
    private float fishRespawnTimer = 8;
    private float reelInputBufferCT = 0.5f;
    public float shotSpeed;
    public bool atWheel = false;
    public bool reeling;
    public float FOVVariable;
    private float zoomVariable;
    private bool usingController;
    bool returning = false;
    GameObject spearProjectile;
    Rigidbody spearRigidbody;

    private GameManager gameManager;
    private AudioManager audioManager;
    private ControlsManager controlsManager;

    private void Start()
    {
        gunStartingPos = gun.transform.localPosition;
        gunStartingRot = gun.transform.localEulerAngles;

        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();
        audioManager = GameObject.FindWithTag("Audio Manager").GetComponent<AudioManager>();
        controlsManager = GameObject.FindWithTag("Controls Manager").GetComponent<ControlsManager>();

        if (mainCam == null)
            mainCam = Camera.current.gameObject;

        zoomVariable = FOVVariable - 20;
    }

    private void Update()
    {
        usingController = controlsManager.usingController;
        if (gameManager.paused)
            return;

        Camera cam = mainCam.GetComponent<Camera>();

        if (!reeling)
        {
            aiming = controlsManager.aim.ReadValue<float>() > 0;

            if (aiming && controlsManager.fire.WasPressedThisFrame() && spearProjectile == null)
            {
                ShootGun();
            }
            if (!aiming && controlsManager.fire.WasPressedThisFrame() == true && !atWheel)
            {
                rightClickGraphic.SetActive(true);
            }
            else if (!aiming && (controlsManager.fire.WasPressedThisFrame() || controlsManager.interact.WasPressedThisFrame()) == true && atWheel)
            {
                exitToMarketConfirm.SetActive(true);

                if (!usingController) 
                    gameManager.CursorLock(false);

                if (usingController)
                    exitToMarketConfirm.transform.GetChild(3).gameObject.SetActive(true); // Buttons to press graphics for gamepad
            }
            if (usingController && exitToMarketConfirm.activeInHierarchy)
            {
                if (controlsManager.A.WasPressedThisFrame())
                {
                    Button button = exitToMarketConfirm.transform.GetChild(1).gameObject.GetComponent<Button>();
                    button.onClick.Invoke();
                }
                else if (controlsManager.B.WasPressedThisFrame())
                {
                    Button button = exitToMarketConfirm.transform.GetChild(2).gameObject.GetComponent<Button>();
                    button.onClick.Invoke();
                }
            }

            if (aiming && spearProjectile == null)
            {
                audioManager.scoping = true;

                gun.transform.localPosition = new Vector3(0, -0.43f, 0.54f);
                gun.transform.localEulerAngles = new Vector3(0, 180, 0);
                rightClickGraphic.SetActive(false);

                cam.fieldOfView = Mathf.Clamp(cam.fieldOfView - 30 * Time.deltaTime, zoomVariable, FOVVariable);
            }
            else if (!aiming || spearProjectile != null)
            {
                audioManager.scoping = false;

                gun.transform.localPosition = gunStartingPos;
                gun.transform.localEulerAngles = gunStartingRot;

                cam.fieldOfView = Mathf.Clamp(cam.fieldOfView + 30 * Time.deltaTime, zoomVariable, FOVVariable);
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
            float strength = fish.GetComponent<FishBehavior>().sizeModifier / ((gameManager.itemsLevel[1] / 1.5f) + 1f);

            gun.transform.localPosition = gunStartingPos;
            gun.transform.localEulerAngles = gunStartingRot;

            spearProjectile.transform.position = fish.transform.position;

            float lastFrameReelTimer = reelTimer;
            reelTimer -= Time.deltaTime;

            if (reelButton.Count == 0)
                reelButtonBuffer -= Time.deltaTime * strength;

            if (reelButton.Count == 0) scrollGraphic.SetActive(true);
            else if (reelButton.Count > 0)
            {
                scrollGraphic.SetActive(false);

                if (usingController)
                {
                    reelInputBufferCT -= Time.deltaTime;
                    ReelButton buttonScript = reelButton[0].GetComponent<ReelButton>();
                    if (controlsManager.A.WasPressedThisFrame() && reelInputBufferCT <= 0)
                    {
                        if (buttonScript.inputIndex == 0)
                        {
                            reelButton[0].GetComponent<Button>().onClick.Invoke();
                            reelButton.RemoveAt(0);
                        }
                        else
                        {
                            reelInputBufferCT = 0.5f;
                        }
                    }
                    else if (controlsManager.B.WasPressedThisFrame() && reelInputBufferCT <= 0)
                    {
                        if (buttonScript.inputIndex == 1)
                        {
                            reelButton[0].GetComponent<Button>().onClick.Invoke();
                            reelButton.RemoveAt(0);
                        }
                        else
                        {
                            reelInputBufferCT = 0.5f;
                        }
                    }
                    else if (controlsManager.X.WasPressedThisFrame() && reelInputBufferCT <= 0)
                    {
                        if (buttonScript.inputIndex == 2)
                        {
                            reelButton[0].GetComponent<Button>().onClick.Invoke();
                            reelButton.RemoveAt(0);
                        }
                        else
                        {
                            reelInputBufferCT = 0.5f;
                        }
                    }
                    else if (controlsManager.Y.WasPressedThisFrame() && reelInputBufferCT <= 0)
                    {
                        if (buttonScript.inputIndex == 3)
                        {
                            reelButton[0].GetComponent<Button>().onClick.Invoke();
                            reelButton.RemoveAt(0);
                        }
                        else
                        {
                            reelInputBufferCT = 0.5f;
                        }
                    }
                }
            }

            if (controlsManager.reel.ReadValue<float>() > 0 && reelButton.Count == 0 && reelTimer > 0 
                || controlsManager.reel.ReadValue<float>() > 0 && reelButton.Count == 0 && reelTimer < -0.75f)
            {
                if (reelTimer < -0.75f)
                {
                    audioManager.PlayAudio(9);
                }
                reelTimer = 0.3f;
            }

            if (reelTimer < -0.75f)
            {
                fish.GetComponent<FishBehavior>().reelModifier = -1 * strength;
            }
            else if (reelTimer <= 0)
            {
                fish.GetComponent<FishBehavior>().reelModifier = -3 * strength;
                if (lastFrameReelTimer > 0)
                {
                    audioManager.PauseAudio(9);
                    audioManager.PlayAudio(10);
                    audioManager.PlayAudio(11);
                }
            }
            else if (reelTimer > 0)
            {
                fish.GetComponent<FishBehavior>().reelModifier = 1f / strength;
            }

            if (fish.transform.position.y >= 0.2f)
            {
                catchFish();

                audioManager.StopAudio(9);

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
            }

            else if (spearRigidbody.linearVelocity == Vector3.zero) // When the spear hits its apex without finding a fish
            {
                returning = true;
                MissFish();
            }

            if (spearProjectile.transform.position == spearBasePos.position && returning == true) // Return the spear to the gun
            {
                spear.SetActive(true);
                Destroy(spearProjectile);
                returning = false;
            }

            if (spearProjectile.GetComponent<SpearHitDetect>().hitFish && !returning) // If the spear hits the fish
            {
                HitFish();
            }

            else if (spearProjectile.GetComponent<SpearHitDetect>().hitOther && !returning) // If the spear hits something else
            {
                audioManager.PlayAudio(5);

                returning = true;
                MissFish();
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
                audioManager.PauseAudio(9);
                audioManager.PlayAudio(10);
                audioManager.PlayAudio(11);

                if (usingController)
                {
                    for (int i = 0; i < 4; i++)
                    {
                        reelButton.Add(Instantiate(reelButtonPrefabCT, GameObject.Find("ReelButtonLayer").transform));
                        reelButton[i].GetComponent<ReelButton>().index = i - 2;
                    }
                }
                else
                {
                    for (int i = 0; i < 3; i++)
                    {
                        reelButton.Add(Instantiate(reelButtonPrefab, GameObject.Find("ReelButtonLayer").transform));
                    }
                }
                reelTimer = -0.5f;
                reelButtonBuffer = 3 * strength;
            }
        }
    }

    void ShootGun()
    {
        audioManager.PlayAudio(3);
        audioManager.PlayAudio(4);

        spear.SetActive(false);

        spearProjectile = Instantiate(spearPrefab, spearBasePos.position, 
            Quaternion.Euler(transform.eulerAngles.x - 90, transform.eulerAngles.y, transform.eulerAngles.z));
        spearRigidbody = spearProjectile.GetComponent<Rigidbody>();
        spearRigidbody.linearVelocity = transform.forward * shotSpeed * -40;
    }
    private void HitFish()
    {
        audioManager.PlayAudio(6);
        audioManager.PlayAudio(7); // SIC SEBEN
        audioManager.PlayAudio(8);

        rippleSpawner = Instantiate(rippleSpawnerPrefab);

        if (Vector3.Distance(transform.position, fish.transform.position) < 5)
            reelTimer = 0;
        reeling = true;
        gameManager.CursorLock(false);
        fish.GetComponent<FishBehavior>().AILevel = 3;

        reelButtonBuffer = 3;
    }
    private void MissFish()
    {
        if (fish != null && fish.GetComponent<FishBehavior>().AILevel != 2) 
            fish.GetComponent<FishBehavior>().AILevel = 1;
    }
    void catchFish()
    {
        Destroy(rippleSpawner);
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
        audioManager.PlayAudio(12);

        fish = Instantiate(fishPrefab);
    }
    public void BreakAwayFish()
    {
        Destroy(rippleSpawner);
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
