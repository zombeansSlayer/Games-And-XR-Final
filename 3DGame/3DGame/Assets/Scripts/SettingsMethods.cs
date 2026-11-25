using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;

public class SettingsMethods : MonoBehaviour
{
    private GameManager gameManager;
    private AudioManager audioManager;

    public List<Slider> sliders = new List<Slider>();
    public List<Toggle> toggles = new List<Toggle>();

    private void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();

        sliders[0].value = gameManager.masterVol;
        sliders[1].value = gameManager.sfxVol;
        sliders[2].value = gameManager.ambientVol;
        sliders[3].value = gameManager.FOVVariable;
        sliders[4].value = gameManager.lookSpeed;

        toggles[0].isOn = Screen.fullScreen;
        toggles[1].isOn = gameManager.controlDisplays;
    }

    private void Update()
    {
        gameManager.masterVol = sliders[0].value;
        gameManager.sfxVol = sliders[1].value;
        gameManager.ambientVol = sliders[2].value;
    }

    public void controlDisplaysChange(bool b)
    {
        gameManager.controlDisplays = b;
    }
    public void fullscreenChange(bool b)
    {
        Screen.fullScreen = b;
    }

    public void FOVChange(float f)
    {
        gameManager.FOVVariable = f;
    }
    public void lookSpeedChange(float f)
    {
        gameManager.lookSpeed = f;
    }
}
