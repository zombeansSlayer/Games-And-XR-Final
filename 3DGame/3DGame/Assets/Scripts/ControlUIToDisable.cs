using UnityEngine;

public class ControlUIToDisable : MonoBehaviour
{
    void Start()
    {
        bool buttonActiveState = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>().controlDisplays;
        gameObject.SetActive(buttonActiveState);
    }
}
