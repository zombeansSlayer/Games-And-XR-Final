using UnityEngine;

public class SpearHitDetect : MonoBehaviour
{
    public bool hitFish;
    public bool hitOther;
    public bool hitWater;
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Fish")
        {
            hitFish = true;
        }
        else if (other.tag == "Boat")
        {
            hitOther = true;
        }
        else if (other.tag == "Water")
        {
            hitWater = true;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Fish")
        {
            hitFish = false;
        }
        else if (other.tag == "Boat")
        {
            hitOther = false;
        }
        else if (other.tag == "Water")
        {
            hitWater = false;
        }
    }
}
