using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    [SerializeField] private GameObject TitleMenu;
    [SerializeField] private GameObject SettingsMenu;

    private Animator titleAnim;
    private Animator settingsAnim;

    private GameManager gameManager;

    void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();

        titleAnim = TitleMenu.GetComponent<Animator>();
        settingsAnim = SettingsMenu.GetComponent<Animator>();

        titleAnim.SetTrigger("Enter");
    }

    public void OpenSettings()
    {
        titleAnim.SetTrigger("Exit");
        settingsAnim.SetTrigger("Enter");
    }

    public void CloseSettings() 
    {
        titleAnim.SetTrigger("Enter");
        settingsAnim.SetTrigger("Exit");
    }

    //Main Menu Functions
    public void Play()
    {
        SceneManager.LoadScene("Boat");
    }
    public void Quit()
    {
        Application.Quit();
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
