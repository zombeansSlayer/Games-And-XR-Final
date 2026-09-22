using UnityEngine;

public class SpearHitDetect : MonoBehaviour
{
    public bool hitFish;
    public bool hitOther;
    //private void Start()
    //{
        //Debug.Log("Spear made");
    //}
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
    }
}
