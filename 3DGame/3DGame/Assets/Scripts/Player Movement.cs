using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.LowLevel;
using UnityEngine.InputSystem.UI;

public class PlayerMovement : MonoBehaviour
{
    public Camera mainCam;
    public GameObject pauseMenu;
    public VirtualMouseInput virtualMouse;
    public Rigidbody rb;
    public float moveSpeed;
    public float accel;
    public float lookSpeed;
    public PlayerControls controls;
    public GUN gun;

    private InputAction move;
    private InputAction look;
    private InputAction pause;

    private Vector2 mouse = Vector2.zero;

    Vector2 moveDirection = Vector2.zero;
    Vector2 lookDirection = Vector2.zero;
    bool paused = false;
    private bool hadMouseWhenPaused = false;
    private bool usingController = false;

    private GameManager gameManager;
    private AudioManager audioManager;

    private void OnEnable()
    {
        controls.PlayerCT.Enable();
        controls.PlayerKB.Enable();

        usingController = Gamepad.current != null;

        ChangeInputType(usingController);
        InputSystem.onDeviceChange += OnDeviceChanged;

        move.Enable();
        look.Enable();
        pause.Enable();
    }
    private void OnDisable()
    {
        InputSystem.onDeviceChange -= OnDeviceChanged;

        move.Disable();
        look.Disable();
        pause.Disable();
        controls.PlayerCT.Disable();
        controls.PlayerKB.Disable();
    }

    private void Awake()
    {
        controls = new PlayerControls();
    }
    private void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();
        audioManager = GameObject.FindWithTag("Audio Manager").GetComponent<AudioManager>();
        gameManager.CursorLock(true);
        gameManager.warned = false;
    }
    private void Update()
    {
        // MY PROPOSED MOVEMENT SCRIPT (working, but robotic looking)
        //rb.linearVelocity = (transform.forward * moveDirection.y * moveSpeed) + (transform.right * moveDirection.x * moveSpeed);
        if (Cursor.visible == false)
        {
            rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ;

            moveDirection = move.ReadValue<Vector2>();

            if (usingController)
                lookDirection = look.ReadValue<Vector2>() * 4;
            else
                lookDirection = look.ReadValue<Vector2>();

            mouse.x += lookDirection.x * Time.deltaTime * lookSpeed;
            mouse.y += lookDirection.y * Time.deltaTime * lookSpeed;
            mouse.y = Mathf.Clamp(mouse.y, -90, 90);

            transform.rotation = Quaternion.Euler(0, mouse.x, 0);
            mainCam.transform.rotation = Quaternion.Euler(-mouse.y, mouse.x, 0);
        }
        else if (Cursor.visible == true)
        {
            rb.constraints = RigidbodyConstraints.FreezeAll; 
        }

        if (pause.WasPressedThisFrame() && paused) // Unpause
        {
            paused = false;
            gameManager.paused = false;
            pauseMenu.SetActive(paused);
            if (!hadMouseWhenPaused) gameManager.CursorLock(true);

            audioManager.EnableOrDisableAudio(true);
        }
        else if (pause.WasPressedThisFrame() && !paused) // Pause
        {
            paused = true;
            gameManager.paused = true;
            pauseMenu.SetActive(paused);

            if (Cursor.visible)
                hadMouseWhenPaused = true;
            else if (!Cursor.visible)
                hadMouseWhenPaused = false;

            gameManager.CursorLock(false);

            audioManager.EnableOrDisableAudio(false);
        }

        if (usingController)
        {
            Vector2 pos = virtualMouse.virtualMouse.position.value;

            pos.x = Mathf.Clamp(pos.x, 0, Screen.width);
            pos.y = Mathf.Clamp(pos.y, 0, Screen.height);

            InputState.Change(virtualMouse.virtualMouse.position, pos);
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

    private void ChangeInputType(bool usingController)
    {
        if (usingController)
        {
            move = controls.PlayerCT.Move;
            look = controls.PlayerCT.Look;
            pause = controls.PlayerCT.Pause;

            virtualMouse.enabled = true;
        }
        else if (!usingController)
        {
            move = controls.PlayerKB.Move;
            look = controls.PlayerKB.Look;
            pause = controls.PlayerKB.Pause;

            virtualMouse.enabled = false;
        }
    }

    private void OnDeviceChanged(InputDevice device, InputDeviceChange change)
    {
        if (device is Gamepad)
        {
            switch (change)
            {
                case InputDeviceChange.Disconnected:
                    Debug.Log("Controller Disconnected. Using keyboard input...");
                    usingController = false;
                    break;
                case InputDeviceChange.Reconnected:
                    Debug.Log("Controller Reconnected. Using controller input...");
                    usingController = true;
                    break;
                case InputDeviceChange.Added:
                    Debug.Log("Controller Added. Using controller input...");
                    usingController = true;
                    break;
                case InputDeviceChange.Removed:
                    Debug.Log("Controller Removed. Using keyboard input...");
                    usingController = false;
                    break;
            }
            ChangeInputType(usingController);
        }
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
