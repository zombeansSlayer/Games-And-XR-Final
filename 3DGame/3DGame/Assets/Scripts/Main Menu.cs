using UnityEngine;

public class MainMenu : MonoBehaviour
{
    [SerializeField] private GameObject TitleMenu;
    [SerializeField] private GameObject SettingsMenu;

    private Animator titleAnim;
    private Animator settingsAnim;

    void Start()
    {
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
}
