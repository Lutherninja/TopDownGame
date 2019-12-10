using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Data/Bool List")]
public class Bool_List_Object : Saving_Object_Base
{
    public List<BoolData> bools;

    public void Reset(bool value)
    {
        foreach (var b in bools)
        {
            b.value = value;
        }
    }
    
    public override void Set(ScriptableObject obj)
    {
        //complete this if needed
    }
}
