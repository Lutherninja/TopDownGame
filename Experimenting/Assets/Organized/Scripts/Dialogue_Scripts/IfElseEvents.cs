using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class IfElseEvents : MonoBehaviour
{
    public UnityEvent TrueEvent, FalseEvent;

    public void CheckBool(BoolData b)
    {
        if (b.value)
        {
            TrueEvent.Invoke();
        }
        else
        {
            FalseEvent.Invoke();
            
        }
    }

    public void CheckBoolList(Bool_List_Object bools)
    {
        foreach (var b in bools.bools)
        {
            if (!b.value)
            {
                FalseEvent.Invoke();
                return;
            }
        }
        TrueEvent.Invoke();
    }

    public void CheckString(PuzzleStringData str)
    {
        if (str.CheckString())
        {
            TrueEvent.Invoke();
        }
        else
        {
            FalseEvent.Invoke();
        }
    }
}
