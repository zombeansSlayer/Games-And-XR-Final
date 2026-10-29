using UnityEngine;

public class Ripple : MonoBehaviour
{
    [SerializeField] private GameObject rippleFX;
    private float rippleTimer = 0.5f;
    void Update()
    {
        rippleTimer -= Time.deltaTime;

        if (rippleTimer <= 0)
        {
            Instantiate(rippleFX, gameObject.transform.position, Quaternion.identity);
            rippleTimer = 0.3f;
        }
    }
}
