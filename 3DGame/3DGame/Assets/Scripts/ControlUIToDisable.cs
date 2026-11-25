using UnityEngine;
using System.Collections.Generic;
using UnityEngine.UI;

public class ControlUIToDisable : MonoBehaviour
{
    private List<GameObject> controlGraphicsKB = new List<GameObject>();
    private List<GameObject> controlGraphicsCT = new List<GameObject>();

    private GameManager gameManager;
    private ControlsManager controlsManager;

    private bool buttonActiveState;
    private bool usingController;

    private bool u; //checking for the last frame's usingController state
    private bool b; //checking for the last frame's controlDisplays state

    void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();
        controlsManager = GameObject.FindWithTag("Controls Manager").GetComponent<ControlsManager>();

        foreach (GameObject graphic in GameObject.FindGameObjectsWithTag("InputUI"))
        {
            controlGraphicsKB.Add(graphic);
        }
        foreach (GameObject graphic in GameObject.FindGameObjectsWithTag("InputUICT"))
        {
            controlGraphicsCT.Add(graphic);
        }

        usingController = controlsManager.usingController;

        if (usingController)
            ControllerUI();
        else if (!usingController)
            KeyboardUI();

        RedisableGraphics();
    }

    void Update()
    {
        usingController = controlsManager.usingController;
        buttonActiveState = gameManager.controlDisplays;

        if (buttonActiveState)
        {
            if (usingController && !u)
                ControllerUI();
            else if (!usingController && u)
                KeyboardUI();

            if (!b)
            {
                if (usingController)
                    ControllerUI();
                else if (!usingController)
                    KeyboardUI();
            }
        }
        else if (!buttonActiveState && b)
            NoneUI();

        u = usingController;
        b = buttonActiveState;
    }

    private void ControllerUI()
    {
        foreach (GameObject graphic in controlGraphicsKB)
        {
            graphic.GetComponent<Image>().enabled = false;
        }
        foreach (GameObject graphic in controlGraphicsCT)
        {
            graphic.GetComponent<Image>().enabled = true;
        }
    }
    private void KeyboardUI()
    {
        foreach (GameObject graphic in controlGraphicsKB)
        {
            graphic.GetComponent<Image>().enabled = true;
        }
        foreach (GameObject graphic in controlGraphicsCT)
        {
            graphic.GetComponent<Image>().enabled = false;
        }
    }
    private void NoneUI()
    {
        foreach (GameObject graphic in controlGraphicsKB)
        {
            graphic.GetComponent<Image>().enabled = false;
        }
        foreach (GameObject graphic in controlGraphicsCT)
        {
            graphic.GetComponent<Image>().enabled = false;
        }
    }
    private void RedisableGraphics()
    {
        foreach (GameObject graphic in controlGraphicsKB)
        {
            graphic.SetActive(false);
        }
    }
}
