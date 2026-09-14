using UnityEngine;

public class FishBehavior : MonoBehaviour
{
    public float flyingSpeed;

    float moveTimer;
    Vector3 floatingPosition;
    private void Start()
    {
        gameObject.transform.position = new Vector3(Random.Range(-6.00f, 6.00f), 1.8f, Random.Range(-6.00f, 6.00f));
        floatingPosition = gameObject.transform.position;
        moveTimer = Random.Range(0.5f, 2f);
    }

    private void Update()
    {
        moveTimer -= Time.deltaTime;
        if (moveTimer <= 0)
        {
            moveTimer = Random.Range(0.5f, 2f);
            floatingPosition = new Vector3(Random.Range(-6.00f, 6.00f), 1.8f, Random.Range(-6.00f, 6.00f));
        }
        gameObject.transform.position = Vector3.MoveTowards(gameObject.transform.position, floatingPosition, flyingSpeed * Time.deltaTime);
    }
}
