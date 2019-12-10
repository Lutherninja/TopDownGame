using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Data/KeyCode/Keys")]
public class KeyCodeDataKeys : KeyCodeData
{
    public List<KeyCode> KeyCodes;
    
    public override bool KeyDown()
    {
        foreach (var key in KeyCodes)
        {
            if (Input.GetKeyDown(key))
            {
                return true;
            }
        }
        return false;
    }
   
    public override bool KeyHold()
    {
        foreach (var key in KeyCodes)
        {
            if (Input.GetKey(key))
            {
                return true;
            }
        }
        return false;
    }
   
    public override bool KeyUp()
    {
        foreach (var key in KeyCodes)
        {
            if (Input.GetKeyUp(key))
            {
                return true;
            }
        }
        return false;
    }
}
