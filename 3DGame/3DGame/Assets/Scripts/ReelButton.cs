using UnityEngine;

public class ReelButton : MonoBehaviour
{
    [SerializeField] private bool usingController;
    [HideInInspector] 
    public int index;

    [HideInInspector] 
    public int inputIndex;
    private void Start()
    {
        Vector2 buttonPos = Vector2.zero;
        if (!usingController)
        {
            buttonPos = new Vector2(Random.Range(0.1f, 0.9f), Random.Range(0.2f, 0.8f));
            buttonPos = new Vector2(buttonPos.x - (buttonPos.x % 0.1f) + 0.05f, buttonPos.y - (buttonPos.y % 0.1f) + 0.05f);
        }
        else
        {
            buttonPos = new Vector2((index * 0.06f) + 0.55f, 0.5f);
            inputIndex = Random.Range(0, 4);
            gameObject.transform.GetChild(inputIndex).gameObject.SetActive(true);
        }
            RectTransform buttonTransform = gameObject.GetComponent<RectTransform>();
        if (buttonTransform != null)
        {
            buttonTransform.anchorMin = buttonPos;
            buttonTransform.anchorMax = buttonPos;

            buttonTransform.anchoredPosition = Vector2.zero;
        }
    }

    public void ClickButton()
    {
        Destroy(gameObject);
    }
}
