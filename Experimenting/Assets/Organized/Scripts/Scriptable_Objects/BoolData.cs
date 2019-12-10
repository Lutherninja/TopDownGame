using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Data/bool")]
public class BoolData : Saving_Object_Base
{
    public bool value;

    public void setTrue()
    {
        value = true;
    }

    public void setFalse()
    {
        value = false;
    }

    public void SetOpposite()
    {
        value = !value;
    }

    public override void Set(ScriptableObject obj)
    {
        BoolData b = obj as BoolData;
        if (b == null) return;
        value = b.value;
    }
}
