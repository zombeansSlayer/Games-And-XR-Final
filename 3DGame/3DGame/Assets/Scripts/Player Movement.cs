using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.LowLevel;
using UnityEngine.InputSystem.UI;

public class PlayerMovement : MonoBehaviour
{
    public Camera mainCam;
    public GameObject pauseMenu;
    public Rigidbody rb;
    public float moveSpeed;
    public float accel;
    public float lookSpeed;
    public GUN gun;

    private Vector2 mouse = Vector2.zero;

    Vector2 moveDirection = Vector2.zero;
    Vector2 lookDirection = Vector2.zero;
    bool paused = false;
    private bool hadMouseWhenPaused = false;
    private bool usingController = false;

    private GameManager gameManager;
    private AudioManager audioManager;
    private ControlsManager controlsManager;

    private void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();

        if (GameObject.FindWithTag("Controls Manager") != null)
        {
            controlsManager = GameObject.FindWithTag("Controls Manager").GetComponent<ControlsManager>();
        }

        if (GameObject.FindWithTag("Audio Manager") != null) 
        { 
            audioManager = GameObject.FindWithTag("Audio Manager").GetComponent<AudioManager>();
        }

        gameManager.CursorLock(true);
        gameManager.warned = false;
    }
    private void Update()
    {
        usingController = controlsManager.usingController;
        // PLAYER AND CAMERA MOVEMENT
        if (Cursor.visible == false)
        {
            rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ;

            moveDirection = controlsManager.move.ReadValue<Vector2>();

            if (usingController && !gun.aiming)
                lookDirection = controlsManager.look.ReadValue<Vector2>() * 6;
            else
                lookDirection = controlsManager.look.ReadValue<Vector2>();

            mouse.x += lookDirection.x * lookSpeed;
            mouse.y += lookDirection.y * lookSpeed;
            mouse.y = Mathf.Clamp(mouse.y, -90, 90);

            transform.rotation = Quaternion.Euler(0, mouse.x, 0);
            mainCam.transform.rotation = Quaternion.Euler(-mouse.y, mouse.x, 0);
        }
        else if (Cursor.visible == true)
        {
            rb.constraints = RigidbodyConstraints.FreezeAll; 
        }

        if (controlsManager.pause.WasPressedThisFrame() && !paused) // Pause
        {
            paused = true;
            gameManager.paused = true;
            pauseMenu.SetActive(paused);

            if (Cursor.visible)
                hadMouseWhenPaused = true;
            else if (!Cursor.visible)
                hadMouseWhenPaused = false;

            gameManager.CursorLock(false);

            if (audioManager != null)
                audioManager.EnableOrDisableAudio(false);
        }

        else if (controlsManager.pause.WasPressedThisFrame() && paused) // Unpause
        {
            paused = false;
            gameManager.paused = false;
            pauseMenu.SetActive(paused);
            if (!hadMouseWhenPaused) gameManager.CursorLock(true);

            if (audioManager != null) 
                audioManager.EnableOrDisableAudio(true);
        }
    }
    // CHATGPT'S PROPOSED MOVEMENT SCRIPT BASED ON MY PROPOSED SCRIPT (has a startup to it and neutralizes strafing)
    private void FixedUpdate()
    {
        if (Cursor.visible == false)
        {
            Vector2 input = Vector2.ClampMagnitude(moveDirection, 1);
            Vector3 targetVelocity =
                (transform.forward * input.y * moveSpeed) +
                (transform.right * input.x * moveSpeed);

            rb.linearVelocity = Vector3.MoveTowards(
                rb.linearVelocity,
                targetVelocity,
                accel * Time.fixedDeltaTime
            );
        }
    }
    
    public void Upgrade(int i)
    {
        gameManager.Upgrade(i);
    }
    public void FastTravel(bool i)
    {
        gameManager.FastTravel(i);
    }
    public void setLocation(int i)
    {
        gameManager.setLocation(i);
    }
    public void CursorLock(bool i)
    {
        gameManager.CursorLock(i);
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "WheelBox" && gun != null)
        {
            gun.atWheel = true;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "WheelBox" && gun != null)
        {
            gun.atWheel = false;
        }
    }
}
