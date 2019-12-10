using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pushable_Object_Triggers : MonoBehaviour
{
    public bool isBlocked;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("PushableTrigger"))
        {
            isBlocked = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("PushableTrigger"))
        {
            isBlocked = false;
        }
    }
}
