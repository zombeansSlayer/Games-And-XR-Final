using UnityEngine;
using UnityEngine.UI;
//using UnityEngine.UIElements;
using System.Collections.Generic;

public class ControllerMenuNav : MonoBehaviour
{
    public GameObject mainMenu;
    public GameObject pointer;
    private ControlsManager controlsManager;
    private Button selectedButton;
    private Slider selectedSlider;
    private int selectedIndex;

    private List<Button> menu = new List<Button>();

    private bool navigatingMenus;
    private bool movingSlider;

    private void Start()
    {
        controlsManager = GameObject.FindWithTag("Controls Manager").GetComponent<ControlsManager>();

        if (mainMenu != null)
        {
            SelectNewMenu(mainMenu);
        }
        else
        {
            SelectNewMenu(gameObject);
        }
    }

    private void Update()
    {
        pointer.SetActive(controlsManager.usingController);

        if (!navigatingMenus)
            return;

        if (controlsManager.MenuNavForwards.WasPressedThisFrame() && !movingSlider)
        {
            selectedIndex++;

            if (selectedIndex < menu.Count)
            {
                selectedButton = menu[selectedIndex];
                RectTransform pointerTransform = pointer.GetComponent<RectTransform>();
                pointerTransform.SetParent(selectedButton.gameObject.transform);
                pointerTransform.anchoredPosition = new Vector2(60, 0);
                pointerTransform.sizeDelta = new Vector2(100, 0);
                //pointerTransform.anchorMin = new Vector3(1, 0.5f);
                //pointerTransform.anchorMax = new Vector3(1, 0.5f);
            }
            else
            {
                selectedIndex--;
            }
        }
        else if (controlsManager.MenuNavBackwards.WasPressedThisFrame() && !movingSlider)
        {
            selectedIndex--;

            if (selectedIndex >= 0)
            {
                selectedButton = menu[selectedIndex];
                RectTransform pointerTransform = pointer.GetComponent<RectTransform>();
                pointerTransform.SetParent(selectedButton.gameObject.transform);
                pointerTransform.anchoredPosition = new Vector2(60, 0);
                pointerTransform.sizeDelta = new Vector2(100, 0);
                //pointerTransform.anchorMin = new Vector3(1, 0.5f);
                //pointerTransform.anchorMax = new Vector3(1, 0.5f);
            }
            else
            {
                selectedIndex++;
            }
        }

        if (movingSlider)
        {
            if (controlsManager.MenuNavForwards.WasPressedThisFrame())
            {
                selectedSlider.value += (selectedSlider.maxValue - selectedSlider.minValue) / 10;
                selectedSlider.value = Mathf.Clamp(selectedSlider.value, selectedSlider.minValue, selectedSlider.maxValue);
            }
            else if (controlsManager.MenuNavBackwards.WasPressedThisFrame())
            {
                selectedSlider.value -= (selectedSlider.maxValue - selectedSlider.minValue) / 10;
                selectedSlider.value = Mathf.Clamp(selectedSlider.value, selectedSlider.minValue, selectedSlider.maxValue);
            }

            if (controlsManager.A.WasPressedThisFrame())
            {
                movingSlider = false;
                selectedSlider = null;

                RectTransform pointerTransform = pointer.GetComponent<RectTransform>();
                pointerTransform.SetParent(selectedButton.gameObject.transform);
                pointerTransform.anchoredPosition = new Vector2(60, 0);
                pointerTransform.sizeDelta = new Vector2(100, 0);
            }
        }

        else if (controlsManager.A.WasPressedThisFrame() && selectedButton != null && !movingSlider)
        {
            selectedButton.onClick.Invoke();
        }
    }

    public void SelectNewMenu(GameObject parentOfButtons)
    {
        //if (!controlsManager.usingController)
        //    return;

        movingSlider = false;

        menu.Clear();
        foreach (Button button in parentOfButtons.GetComponentsInChildren<Button>())
        {
            menu.Add(button);
        }

        if (menu.Count > 0)
        {
            selectedIndex = 0;
            selectedButton = menu[selectedIndex];
            navigatingMenus = true;

            RectTransform pointerTransform = pointer.GetComponent<RectTransform>();
            pointerTransform.SetParent(selectedButton.gameObject.transform);
            pointerTransform.anchoredPosition = new Vector2(60, 0);
            pointerTransform.sizeDelta = new Vector2(100, 0);
        }
        else
        {
            navigatingMenus = false;
            RectTransform pointerTransform = pointer.GetComponent<RectTransform>();
            pointerTransform.SetParent(GameObject.Find("Canvas").transform);
            pointerTransform.anchoredPosition = new Vector2(60, 0);
            pointerTransform.sizeDelta = new Vector2(100, 0);
        }
    }

    public void SelectSlider(Slider slider)
    {
        if (slider == null) return;

        movingSlider = true;
        selectedSlider = slider;

        RectTransform pointerTransform = pointer.GetComponent<RectTransform>();
        pointerTransform.SetParent(selectedSlider.gameObject.transform);
        pointerTransform.anchoredPosition = new Vector2(60, 0);
        pointerTransform.sizeDelta = new Vector2(100, 0);
    }

    public void ToggleToggle(Toggle toggle)
    {
        if (toggle.isOn)
            toggle.isOn = false;
        else if (!toggle.isOn)
            toggle.isOn = true;
    }
}
