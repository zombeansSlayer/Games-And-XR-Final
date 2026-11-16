using UnityEngine;

public class WaterFlow : MonoBehaviour
{
    public Material waterMaterial;
    public float waterSpeed;

    private void Start()
    {
        transform.localEulerAngles = new Vector3(0, Random.Range(0, 360), 0);
    }
    void Update()
    {
        waterMaterial.mainTextureOffset += new Vector2(1, 0) * waterSpeed * Time.deltaTime;
    }
}
