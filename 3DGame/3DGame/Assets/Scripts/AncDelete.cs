using UnityEngine;

public class AncDelete : MonoBehaviour
{
    public void Delete()
    {
        Destroy(gameObject);
    }
    public void DeleteAnc()
    {
        Destroy(transform.parent.gameObject);
    }
    public void DisableAnim()
    {
        GetComponent<Animator>().enabled = false;
    }
    public void lockCursor()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }
}
