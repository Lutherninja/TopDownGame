using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class InteractEvent : MonoBehaviour
{
    public string InputType;
    public UnityEvent Interact_Event;
    private bool inRange = false;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            inRange = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            inRange = false;
        }
    }

    private void FixedUpdate()
    {
        if (inRange && Input.GetButtonDown(InputType))
        {
            Interact_Event.Invoke();
        }
    }
}
