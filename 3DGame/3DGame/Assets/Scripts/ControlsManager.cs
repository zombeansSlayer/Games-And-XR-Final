using UnityEditor.ShaderGraph;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.Controls;

public class ControlsManager : MonoBehaviour
{
    [HideInInspector] public PlayerControls controls;

    [HideInInspector] public bool usingController;

    [HideInInspector] public InputAction move;
    [HideInInspector] public InputAction look;
    [HideInInspector] public InputAction pause;

    [HideInInspector] public InputAction aim;
    [HideInInspector] public InputAction fire;
    [HideInInspector] public InputAction reel;
    [HideInInspector] public InputAction A;
    [HideInInspector] public InputAction B;
    [HideInInspector] public InputAction X;
    [HideInInspector] public InputAction Y;
    [HideInInspector] public InputAction interact;

    private void Awake()
    {
        controls = new PlayerControls();
    }

    private void OnEnable()
    {
        controls.PlayerCT.Enable();
        controls.PlayerKB.Enable();

        move.Enable();
        look.Enable();
        pause.Enable();

        aim.Enable();
        fire.Enable();
        reel.Enable();
        A.Enable();
        B.Enable();
        X.Enable();
        Y.Enable();
        interact.Enable();
        A = controls.PlayerCT.A;
        B = controls.PlayerCT.B;
        X = controls.PlayerCT.X;
        Y = controls.PlayerCT.Y;

        InputSystem.onDeviceChange += OnDeviceChanged;
        InputSystem.onActionChange += OnMovePerformed;

        usingController = Gamepad.current != null;
        ChangeInputType(usingController);
    }
    private void OnDisable()
    {
        controls.PlayerCT.Disable();
        controls.PlayerKB.Disable();

        move.Disable();
        look.Disable();
        pause.Disable();

        aim.Disable();
        fire.Disable();
        reel.Disable();
        A.Disable();
        B.Disable();
        X.Disable();
        Y.Disable();
        interact.Disable();

        InputSystem.onDeviceChange -= OnDeviceChanged;
        InputSystem.onActionChange -= OnMovePerformed;
    }

    public void ChangeInputType(bool usingController)
    {
        if (usingController)
        {
            move = controls.PlayerCT.Move;
            look = controls.PlayerCT.Look;
            pause = controls.PlayerCT.Pause;

            aim = controls.PlayerCT.Aim;
            fire = controls.PlayerCT.Fire;
            reel = controls.PlayerCT.Reel;

            interact = controls.PlayerCT.Interact;
        }
        else if (!usingController)
        {
            move = controls.PlayerKB.Move;
            look = controls.PlayerKB.Look;
            pause = controls.PlayerKB.Pause;

            aim = controls.PlayerKB.Aim;
            fire = controls.PlayerKB.Fire;
            reel = controls.PlayerKB.Reel;

            interact = controls.PlayerKB.Interact;
        }
        //virtualMouse.enabled = usingController;
    }
    public void OnMovePerformed(object obj, InputActionChange change)
    {
        // Only trigger when an action is actively performed
        if (change == InputActionChange.ActionStarted || change == InputActionChange.ActionPerformed)
        {
            var action = (InputAction)obj;
            var control = action.activeControl;
            InputDevice device = action.activeControl.device;

            if (device is Gamepad && !usingController && !IsStickInput(control))
            {
                usingController = true;
                ChangeInputType(usingController);
            }
            else if ((device is Keyboard || device is Mouse) && usingController && !IsMouseInput(control))
            {
                usingController = false;
                ChangeInputType(usingController);
            }
        }
    }
    private void OnDeviceChanged(InputDevice device, InputDeviceChange change)
    {
        if (device is Gamepad)
        {
            switch (change)
            {
                case InputDeviceChange.Disconnected:
                    break;
                case InputDeviceChange.Reconnected:
                    break;
                case InputDeviceChange.Added:
                    break;
                case InputDeviceChange.Removed:
                    break;
            }
            ChangeInputType(usingController);
        }
    }
    private bool IsStickInput(InputControl control)
    {
        while (control != null)
        {
            if (control is StickControl)
                return true;

            control = control.parent;
        }

        return false;
    }
    private bool IsMouseInput(InputControl control)
    {
        while (control != null)
        {
            if (control is Mouse)
                return true;

            control = control.parent;
        }

        return false;
    }
}
