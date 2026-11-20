using UnityEngine;

public class WaterFlow : MonoBehaviour
{
    public Material waterMaterial;
    public float waterSpeed;
    public float waterSpeedVarianceSpeed;

    private float baseSpeed;
    private float waterSpeedTarget;

    private void Start()
    {
        transform.localEulerAngles = new Vector3(0, Random.Range(0, 360), 0);

        baseSpeed = waterSpeed;
        waterSpeedTarget = Random.Range(0, 2f) * baseSpeed;
    }
    void Update()
    {
        if (waterSpeed != waterSpeedTarget)
            waterSpeed = Mathf.MoveTowards(waterSpeed, waterSpeedTarget, waterSpeedVarianceSpeed);
        else if (waterSpeed == waterSpeedTarget)
        {
            waterSpeedTarget = Random.Range(0, 2f) * baseSpeed;
        }

        waterMaterial.mainTextureOffset += new Vector2(1, 0) * waterSpeed * Time.deltaTime;
    }
}
