using System;
using Unity.VisualScripting;
using UnityEngine;
using System.Collections.Generic;

public class CustomerSpawner : MonoBehaviour
{
    private GameManager gameManager;

    public GameObject customerPrefab;
    public Transform frontOfLinePosition;
    public List<GameObject> customers = new List<GameObject> { };

    public float customerSpacing;

    float customerSpawnCooldown;

    private void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();
        gameManager.customerSpawner = this;
        customerSpawnCooldown = UnityEngine.Random.Range(16, 20);
    }
    private void Update()
    {
        if (gameManager.paused)
            return;

        customerSpawnCooldown -= Time.deltaTime * (Math.Pow(2, gameManager.itemsLevel[0]).ConvertTo<float>());
        if (customerSpawnCooldown <= 0 && gameManager.fishInventory.Count > 0)
        {
            SpawnCustomer();
            customerSpawnCooldown = UnityEngine.Random.Range(16, 20);
        }
    }
    void SpawnCustomer()
    {
        customers.Add(Instantiate(customerPrefab, new Vector3(frontOfLinePosition.position.x + (customerSpacing * customers.Count), frontOfLinePosition.position.y, frontOfLinePosition.position.z), Quaternion.identity));
    }
    public void UpdateLine()
    {
        int index = 0;
        foreach (var customer in customers)
        {
            customer.transform.position = new Vector3(frontOfLinePosition.position.x + (customerSpacing * index), frontOfLinePosition.position.y, frontOfLinePosition.position.z);
            index++;
        }
    }
}
