using UnityEngine;

public class WaterFlow : MonoBehaviour
{
    public Material waterMaterial;
    public float waterSpeed;
    public Vector2 waterDirection;

    void Update()
    {
        waterMaterial.mainTextureOffset += waterDirection * waterSpeed * Time.deltaTime;
    }
}
