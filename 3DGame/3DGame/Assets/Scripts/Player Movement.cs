using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerMovement : MonoBehaviour
{
    public Camera mainCam;
    public GameObject pauseMenu;
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

    private GameManager gameManager;

    private void OnEnable()
    {
        move = controls.Player.Move;
        move.Enable();

        look = controls.Player.Look;
        look.Enable();

        pause = controls.Player.Pause;
        pause.Enable();
    }
    private void OnDisable()
    {
        move.Disable();
        look.Disable();
        pause.Disable();
    }

    private void Awake()
    {
        controls = new PlayerControls(); // ChatGPT helped me find out that I accidentally made multiple scripts in my game files, leading to an ambiguity error which was soon fixed
    }
    private void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();
        gameManager.CursorLock(true);
    }
    private void Update()
    {
        // MY PROPOSED MOVEMENT SCRIPT (working, but robotic looking)
        //rb.linearVelocity = (transform.forward * moveDirection.y * moveSpeed) + (transform.right * moveDirection.x * moveSpeed);
            if (Cursor.visible == false)
            {
                rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ;

                moveDirection = move.ReadValue<Vector2>();
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

        if (pause.WasPressedThisFrame() && paused)
        {
            paused = false;
            gameManager.paused = false;
            pauseMenu.SetActive(paused);
            if (!hadMouseWhenPaused) gameManager.CursorLock(true);
        }
        else if (pause.WasPressedThisFrame() && !paused)
        {
            paused = true;
            gameManager.paused = true;
            pauseMenu.SetActive(paused);

            if (Cursor.visible)
                hadMouseWhenPaused = true;
            else if (!Cursor.visible)
                hadMouseWhenPaused = false;

            gameManager.CursorLock(false);
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
