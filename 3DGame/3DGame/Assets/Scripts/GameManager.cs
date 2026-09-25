using UnityEngine;
using System.Collections.Generic;
using System;
using Unity.VisualScripting;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public int location;
    public int totalFish;
    public float totalCash;
    public List<float> fishInventory = new List<float> { };

    float dayClock;
    int day;

    public List<int> itemsLevel = new List<int> { 0, 0, 0, 0 }; // Advertising, Spear gun strength, Incense, Motor

    private Vector2 sizeRange = Vector2.zero;
    void Awake()
    {
        if (GameObject.FindGameObjectsWithTag("Game Manager").Length > 1)
            Destroy(gameObject);
        DontDestroyOnLoad(gameObject);
    }

    void Update()
    {
        dayClock += Time.deltaTime;
        if (dayClock >= 720)
        {
            NewDay();
        }
    }

    public void Upgrade(int itemToUpgrade)
    {
        if (totalCash >= Math.Pow(itemsLevel[itemToUpgrade] + 1, 2) * 100)
        {
            itemsLevel[itemToUpgrade]++;
            totalCash -= (Math.Pow(itemsLevel[itemToUpgrade] + 1, 2) * 100).ConvertTo<float>();
        }
    }

    private void NewDay()
    {
        dayClock = 0;
        day++;
        SceneManager.LoadScene("Market");
    }
    public void FastTravel(bool goingOut)
    {
        if (goingOut)
            SceneManager.LoadScene("Boat");
        else if (!goingOut)
            SceneManager.LoadScene("Market");

        dayClock += (60 / itemsLevel[3]);
    }
}
