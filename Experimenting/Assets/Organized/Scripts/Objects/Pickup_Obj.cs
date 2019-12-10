using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
[RequireComponent(typeof(Rigidbody))]
public class Pickup_Obj : MonoBehaviour
{
    public float waitTime;
    public bool isHeavy;
    public UnityEvent onThrow;
    public UnityEvent onPickup;
}
