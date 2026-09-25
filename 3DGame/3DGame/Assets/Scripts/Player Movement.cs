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
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }
    private void Update()
    {
        // MY PROPOSED MOVEMENT SCRIPT (working, but robotic looking)
        //rb.linearVelocity = (transform.forward * moveDirection.y * moveSpeed) + (transform.right * moveDirection.x * moveSpeed);
        if (gun != null)
        {
            if (gun.reeling == false)
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
            else if (gun.reeling == true)
            {
                rb.constraints = RigidbodyConstraints.FreezeAll;
            }
        }
        else
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

        if (pause.WasPressedThisFrame() && paused)
        {
            paused = false;
            pauseMenu.SetActive(paused);
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }
        else if (pause.WasPressedThisFrame() && !paused)
        {
            paused = true;
            pauseMenu.SetActive(paused);
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }

    }
    // CHATGPT'S PROPOSED MOVEMENT SCRIPT BASED ON MY PROPOSED SCRIPT (has a startup to it and neutralizes strafing)
    private void FixedUpdate()
    {
        if (gun != null)
        {
            if (gun.reeling == false)
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
        else
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
}
