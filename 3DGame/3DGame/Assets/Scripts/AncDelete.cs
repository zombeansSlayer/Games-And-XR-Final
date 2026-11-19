using UnityEngine;

public class AncDelete : MonoBehaviour
{
    public void Delete()
    {
        Destroy(gameObject);
    }
    public void DisableAnim()
    {
        GetComponent<Animator>().enabled = false;
    }
}
