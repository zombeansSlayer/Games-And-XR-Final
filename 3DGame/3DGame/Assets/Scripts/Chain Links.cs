using UnityEngine;
using System;
using System.Collections.Generic;

public class ChainLinks : MonoBehaviour
{
    [SerializeField] private GameObject chainLinkPrefab;
    private Transform gunPoint;
    private Transform harpoonPoint;

    [SerializeField] private float linkSpacing;
    [SerializeField] private float linkSize;
    private List<GameObject> chainLinks = new List<GameObject>();

    void Start()
    {
        gunPoint = GameObject.FindWithTag("Gun").transform.GetChild(0);
        harpoonPoint = transform.GetChild(0);
    }
    void Update()
    {
        updateChainLinks();
    }

    private void updateChainLinks()
    {
        float distance = Vector3.Distance(gunPoint.position, harpoonPoint.position);

        int requiredLinks = Mathf.CeilToInt(distance / linkSpacing);
        //int requiredLinks = Convert.ToInt32(Vector3.Distance(harpoonPoint.position, gunPoint.position) / linkSpacing);
        while (chainLinks.Count < requiredLinks)
        {
            GameObject newLink = Instantiate(chainLinkPrefab, transform);
            chainLinks.Add(newLink);

            if (chainLinks.Count % 2 == 1)
                newLink.transform.localEulerAngles = new Vector3(0, 0, 90);

            newLink.transform.localScale = Vector3.one * linkSize;
        }
        while (chainLinks.Count > requiredLinks)
        {
            GameObject lastLink = chainLinks[chainLinks.Count - 1];
            chainLinks.Remove(lastLink);
            Destroy(lastLink);
        }

        Vector3 direction = (gunPoint.position - harpoonPoint.position).normalized;

        for (int i = 0; i < chainLinks.Count; i++)
        {
            float distanceAlongChain = (i + 0.5f) * linkSpacing;

            chainLinks[i].transform.position =
                harpoonPoint.position + direction * distanceAlongChain;

            chainLinks[i].transform.LookAt(gunPoint);

            if (i % 2 == 1)
            {
                chainLinks[i].transform.rotation *=
                    Quaternion.Euler(0, 0, 90);
            }
        }
    }
}
