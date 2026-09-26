using UnityEngine;
using System.Collections.Generic;
using System;
using Unity.VisualScripting;
using UnityEngine.SceneManagement;
using TMPro;

public class GameManager : MonoBehaviour
{
    public int location;
    public float totalCash;
    public float moneyPerPound;
    public CustomerSpawner customerSpawner;
    public TextMeshProUGUI clock;
    public List<float> fishInventory = new List<float> { };
    public bool paused;

    float dayClock;
    int day;

    public List<int> itemsLevel = new List<int> { 0, 0, 0, 0 }; // Advertising, Spear gun strength, Incense, Motor

    void Awake()
    {
        if (GameObject.FindGameObjectsWithTag("Game Manager").Length > 1)
            Destroy(gameObject);
        DontDestroyOnLoad(gameObject);
    }


    void Update()
    {
        if (paused)
            return;

            dayClock += Time.deltaTime;
            if (clock != null)
            {
                if (dayClock < 240)
                    clock.text = $"{MathF.Floor(dayClock / 60) + 8}:{(int)(dayClock % 60):D2} AM";
                else
                {
                    clock.text = $"{MathF.Floor(dayClock / 60) - 3}:{(int)(dayClock % 60):D2} PM";
                }
            }

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
        if (goingOut && customerSpawner != null)
        {
            foreach (var cust in customerSpawner.customers)
            {
                foreach (var fish in cust.GetComponent<Customer>().fishBuying)
                {
                    fishInventory.Add(fish);
                }
            }
            SceneManager.LoadScene("Boat");
        }
        else if (!goingOut)
            SceneManager.LoadScene("Market");

        dayClock += (60 / (itemsLevel[3] + 1));
    }

    public void setLocation(int fishingLocation)
    {
        location = fishingLocation;
    }

    public void CursorLock(bool lockingCursor)
    {
        if (!lockingCursor)
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
        else if (lockingCursor)
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }
    }
}
