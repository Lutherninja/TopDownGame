using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
[CreateAssetMenu(menuName = "Object/Pushable")]
public class Pushable_Object : ScriptableObject
{
    public Vector3 PushDirection;
    public float pushAmount;
    public bool isPushable;
    public UnityEvent AfterPush;

    public void SetPushable(bool val)
    {
        isPushable = val;
    }

    public void SetPushDirection(Vector3 direction)
    {
        PushDirection = direction;
    }
    
    
}
