using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    [SerializeField] private GameObject TitleMenu;
    [SerializeField] private GameObject SettingsMenu;
    [SerializeField] private GameObject DifficultyMenu;

    private Animator titleAnim;
    private Animator settingsAnim;
    private Animator difficultyAnim;

    private GameManager gameManager;

    void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();

        titleAnim = TitleMenu.GetComponent<Animator>();
        settingsAnim = SettingsMenu.GetComponent<Animator>();
        difficultyAnim = DifficultyMenu.GetComponent<Animator>();

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

    public void OpenDiff()
    {
        titleAnim.SetTrigger("Exit");
        difficultyAnim.SetTrigger("Enter");
    }

    public void CloseDiff()
    {
        titleAnim.SetTrigger("Enter");
        difficultyAnim.SetTrigger("Exit");
    }



    //Main Menu Functions
    public void Play()
    {
        gameManager.paused = false;
        SceneManager.LoadScene("Boat");
    }
    public void Quit()
    {
        Application.Quit();
    }
}
