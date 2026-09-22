using UnityEngine;

public class ReelButton : MonoBehaviour
{
    private void Start()
    {
        Vector2 buttonPos = new Vector2(Random.Range(0.1f, 0.9f), Random.Range(0.2f, 0.8f));
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
