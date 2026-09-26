using UnityEngine;
using TMPro;

public class Clock : MonoBehaviour
{
    private GameManager gameManager;

    void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();

        gameManager.clock = GetComponent<TextMeshProUGUI>();
    }
}
