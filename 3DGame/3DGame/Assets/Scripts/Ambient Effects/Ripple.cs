using UnityEngine;

public class Ripple : MonoBehaviour
{
    [SerializeField] private GameObject rippleFX;
    private float rippleTimer = 0.5f;
    private GameObject fish;

    void Start()
    {
        fish = GameObject.FindWithTag("Fish");
    }

    void Update()
    {
        rippleTimer -= Time.deltaTime;

        gameObject.transform.position = new Vector3(fish.transform.position.x, gameObject.transform.position.y, fish.transform.position.z);

        if (rippleTimer <= 0)
        {
            Instantiate(rippleFX, gameObject.transform.position, Quaternion.identity);
            rippleTimer = 0.3f;
        }
    }
}
