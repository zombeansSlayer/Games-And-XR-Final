using System;
using Unity.VisualScripting;
using UnityEngine;

public class Customers : MonoBehaviour
{
    private GameManager gameManager;

    public GameObject customerPrefab;

    float customerSpawnCooldown;

    private void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();
        customerSpawnCooldown = UnityEngine.Random.Range(16, 20);
    }
    private void Update()
    {
        customerSpawnCooldown -= Time.deltaTime * (Math.Pow(2, gameManager.itemsLevel[0]).ConvertTo<float>());
        if (customerSpawnCooldown <= 0)
        {
            SpawnCustomer();
            customerSpawnCooldown = UnityEngine.Random.Range(16, 20);
        }
    }
    void SpawnCustomer()
    {
        Instantiate(customerPrefab);
    }
}
