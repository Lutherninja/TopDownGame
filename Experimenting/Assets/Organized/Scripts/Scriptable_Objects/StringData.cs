using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Data/string")]
public class StringData : Saving_Object_Base
{
    public string value;

    public void SetStr(string str)
    {
        value = str;
    }
    
    public override void Set(ScriptableObject obj)
    {
        StringData str = obj as StringData;
        if (str != null)
            value = str.value;
    }
}
