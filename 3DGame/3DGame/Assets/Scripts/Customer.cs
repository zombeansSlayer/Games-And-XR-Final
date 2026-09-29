using UnityEngine;
using System.Collections.Generic;
using System;
using Unity.VisualScripting;
using TMPro;

public class Customer : MonoBehaviour
{
    //public Material customerMaterial;

    private Color customerColor;
    private List<Color> possibleColors = new List<Color> { Color.black, Color.blue, Color.cyan, Color.gray, Color.green, Color.magenta, Color.red, Color.white, Color.yellow};
    private GameManager gameManager;
    public List<float> fishBuying = new List<float> { };
    private List<float> fishToChoose = new List<float> { };

    void Start()
    {
        customerColor = possibleColors[UnityEngine.Random.Range(0, possibleColors.Count)];

        GetComponent<Renderer>().material.color = customerColor;
        //customerMaterial.color = customerColor;
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();

        fishToChoose = gameManager.fishInventory;

        TakeFish();

        for (int i = 0; i < gameManager.itemsLevel[0] + 1; i++)
        {
            if (gameManager.fishInventory.Count < 1)
                break;
            if (UnityEngine.Random.Range(1, 101) <= 20)
                TakeFish();
        }

        transform.GetChild(0).GetComponent<TextMeshPro>().text = $"{fishBuying.Count}";
    }

    private void TakeFish()
    {
        int choice = UnityEngine.Random.Range(0, fishToChoose.Count);
        fishBuying.Add(fishToChoose[choice]);
        fishToChoose.RemoveAt(choice);
    }
}
