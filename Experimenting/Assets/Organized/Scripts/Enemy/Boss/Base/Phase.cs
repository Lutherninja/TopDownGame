using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Phase : ScriptableObject
{
    [HideInInspector] public bool finishStart = false, finishEnd = false;
    public bool currentPhase;
    public abstract IEnumerator StartPhase(List<GameObject> objs);
    public abstract IEnumerator UpdatePhase(List<GameObject> objs);
    public abstract IEnumerator StopPhase(List<GameObject> objs);
}
