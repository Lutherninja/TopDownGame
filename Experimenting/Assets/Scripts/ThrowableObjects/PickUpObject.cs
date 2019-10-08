using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

public class PickUpObject : MonoBehaviour
{
   // public GameObject pickupVol;
    public bool isUp;
    public bool canPick;
    
    
    void Start()
    {
      
        
    }


    private void OnTriggerStay(Collider other) // on trigger stay setting bool to true
    {
        if (other.tag == "PickUp")
        {
            canPick = true;
        }
    }

    private void OnTriggerExit(Collider other) // on exit setting the bool to false
    {  
            canPick = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (canPick && Input.GetKeyDown("y"))
        {
            Debug.Log("pickup up stuff");
        }
    }
}
