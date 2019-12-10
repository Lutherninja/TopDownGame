using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Data/Vector3")]
public class Vector3Data : ScriptableObject
{
    public Vector3 vector;

    public void SetVector(Vector3 dest)
    {
        vector = dest;
    }

    public void SetVector(Transform dest)
    {
        vector = dest.position;
    }
}
