using UnityEngine;
using System.Collections.Generic;

public class FishBehavior : MonoBehaviour
{
    public float flyingSpeed;
    public float angryModifier;
    public float reelModifier;
    public int AILevel;
    //public GameObject fish;

    List<List<Transform>> FishAreaBounds = new List<List<Transform>>();
    List<Transform> FishBox;
    int patience;
    float moveTimer;
    Vector3 floatingPosition;

    private void Start()
    {
        foreach (GameObject t in GameObject.FindGameObjectsWithTag("Bounds"))
        {
            List<Transform> boxBounds = new List<Transform> { t.transform.GetChild(0), t.transform.GetChild(1) };
            FishAreaBounds.Add(boxBounds);
        }
        AILevel = 0;
        FishBox = FishAreaBounds[Random.Range(0, FishAreaBounds.Count)];
        gameObject.transform.position = new Vector3(Random.Range(FishBox[0].position.x, FishBox[1].position.x), -0.8f, Random.Range(FishBox[0].position.z, FishBox[1].position.z));
        floatingPosition = gameObject.transform.position;
        moveTimer = 0;
        patience = Random.Range(5, 8);
    }

    private void Update()
    {
        moveTimer -= Time.deltaTime;
        if (moveTimer <= 0 && AILevel == 1 || gameObject.transform.position == floatingPosition && AILevel == 1)
        {
            moveTimer = Random.Range(0.5f, 1.5f);
            floatingPosition = new Vector3(Random.Range(FishBox[0].position.x, FishBox[1].position.x), -0.8f, Random.Range(FishBox[0].position.z, FishBox[1].position.z));
            if (patience <= 0) AILevel = 2;
            patience--;
        }
        else if (AILevel == 2)
        {
            floatingPosition = new Vector3(0, -10, 0);
            if (moveTimer <= 0)
            {
                GameObject.FindWithTag("Gun").GetComponent<GUN>().fish = Instantiate(gameObject);
                Destroy(gameObject);
            }
        }
        else if (AILevel == 3)
        {
            floatingPosition = GameObject.FindWithTag("Player").transform.position;
        }
        else if (gameObject.transform.position == floatingPosition && AILevel == 0)
        {
            moveTimer = Random.Range(0.5f, 2f);
            floatingPosition = new Vector3(Random.Range(FishBox[0].position.x, FishBox[1].position.x), -0.8f, Random.Range(FishBox[0].position.z, FishBox[1].position.z));
        }
        if (AILevel == 1 || AILevel == 2)
            gameObject.transform.position = Vector3.MoveTowards(gameObject.transform.position, floatingPosition, flyingSpeed * angryModifier * Time.deltaTime);
        else if (AILevel == 3)
            gameObject.transform.position = Vector3.MoveTowards(gameObject.transform.position, floatingPosition, flyingSpeed * reelModifier * Time.deltaTime);
        else if (AILevel == 0)
            gameObject.transform.position = Vector3.MoveTowards(gameObject.transform.position, floatingPosition, flyingSpeed * Time.deltaTime);
    }
}
