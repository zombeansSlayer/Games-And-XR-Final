using UnityEngine;
using System.Collections.Generic;

public class FishBehavior : MonoBehaviour
{
    public float flyingSpeed;
    public float angryModifier;
    public float reelModifier;
    public float sizeModifier;
    public int AILevel;
    public GameObject fish;

    private List<List<Transform>> FishAreaBounds = new List<List<Transform>>();
    private List<Transform> FishBox;
    private int patience;
    private float moveTimer;
    private Vector3 floatingPosition;

    private GameManager gameManager;

    private void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();

        if (gameManager.location == 1) sizeModifier = Random.Range(0.6f, 1f);
        else if (gameManager.location == 2) sizeModifier = Random.Range(0.9f, 1.5f);
        else if (gameManager.location == 3) sizeModifier = Random.Range(1.2f, 2.2f);
        else if (gameManager.location == 4) sizeModifier = Random.Range(2f, 2.9f);
        else if (gameManager.location == 5) sizeModifier = Random.Range(3f, 4f);

        transform.localScale = new Vector3(sizeModifier * 15, sizeModifier * 15, sizeModifier * 15);
        //sizeModifier = (transform.localScale.x + transform.localScale.y + transform.localScale.z) / 45;

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
        if (gameManager.paused)
            return;

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
            gameObject.transform.position = Vector3.MoveTowards(gameObject.transform.position, floatingPosition, reelModifier * Time.deltaTime);
        else if (AILevel == 0)
            gameObject.transform.position = Vector3.MoveTowards(gameObject.transform.position, floatingPosition, flyingSpeed * sizeModifier * Time.deltaTime);
        if (AILevel == 3 && Vector3.Distance(transform.position, floatingPosition) > 10)
        {
            AILevel = 2;
            GameObject.FindWithTag("Gun").GetComponent<GUN>().BreakAwayFish();
        }
    }
}
