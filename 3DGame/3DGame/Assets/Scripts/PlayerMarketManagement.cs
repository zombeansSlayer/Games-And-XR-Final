using UnityEngine;
using UnityEngine.InputSystem;
using TMPro;
using System.Collections.Generic;
using System;

public class PlayerMarketManagement : MonoBehaviour
{
    public PlayerControls controls;
    public Transform cameraTransform;
    public TextMeshProUGUI interactText;
    public GameObject interactGraphic;
    public float maxInteractDistance;
    public LayerMask interactableLayer;

    public List<TextMeshProUGUI> upgradeCostText = new List<TextMeshProUGUI> { };

    public List<TextMeshProUGUI> valueUI = new List<TextMeshProUGUI> { };

    public CustomerSpawner customers;

    private InputAction interact;

    private GameManager gameManager;

    private void OnEnable()
    {
        interact = controls.Player.Interact;
        interact.Enable();
    }
    private void OnDisable()
    {
        interact.Disable();
    }

    private void Awake()
    {
        controls = new PlayerControls();
    }

    private void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();

        UpdateCostNumbers();
        UpdateValueNumbers();
    }

    void Update()
    {
        if (gameManager.paused)
            return;

        RaycastHit hit;
        if (Physics.Raycast(cameraTransform.position, cameraTransform.forward, out hit, maxInteractDistance, interactableLayer))
        {
            Interactable interactable = hit.collider.GetComponent<Interactable>();

            if (interactable == null)
            {
                Debug.LogError($"{hit.collider.name} does not contain the Interactable script. Add the script or remove this item from the Interactable layer.");
                return;
            }

            interactGraphic.SetActive(true);
            if (interactText.text == "") 
                interactText.text = interactable.interactableFlavorText;

            if (interact.WasPressedThisFrame())
            {
                interactable.onInteract.Invoke();
            }
        }
        else
        {
            interactGraphic.SetActive(false);
            interactText.text = "";
        }
    }

    public void RegisterInteract(string noCustomerText)
    {
        if (customers.customers.Count < 1)
        {
            interactText.text = noCustomerText;
            return;
        }

        foreach (var fish in customers.customers[0].GetComponent<Customer>().fishBuying)
        {
            gameManager.totalCash += gameManager.moneyPerPound * fish;
            gameManager.fishInventory.Remove(fish);
        }

        Destroy(customers.customers[0]);
        customers.customers.RemoveAt(0);
        customers.UpdateLine();
    }

    public void UpdateCostNumbers()
    {
        int i = 0;
        foreach (var button in upgradeCostText)
        {
            button.text = $"${(Math.Pow(gameManager.itemsLevel[i] + 1, 2) * 100)}";
            i++;
        }
    }

    public void UpdateValueNumbers()
    {
        valueUI[0].text = $"${MathF.Round(gameManager.totalCash)}.{((int)(gameManager.totalCash * 100) % 100):D2}";

        int totalFish = gameManager.fishInventory.Count;
        foreach (var customer in customers.customers)
        {
            foreach (var fish in customer.GetComponent<Customer>().fishBuying) {
                totalFish++;
            }
        }
        valueUI[1].text = $"Fish in Stock: {totalFish}";
    }
}
