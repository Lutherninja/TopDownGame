using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = ("Data/KeyCode/Unity"))]
public class UnityKeyCodeObject : KeyCodeData
{
    public List<string> UnityInputName;
    public float value;
    
    public override bool KeyDown()
    {
        foreach (var name in UnityInputName)
        {
            if (Input.GetButtonDown(name))
            {
                value = Input.GetAxis(name);
                return true;
            }
        }
        return false;
    }
   
    public override bool KeyHold()
    {
        foreach (var name in UnityInputName)
        {
            if (Input.GetButton(name))
            {
                value = Input.GetAxis(name);
                return true;
            }
        }
        return false;
    }
   
    public override bool KeyUp()
    {
        foreach (var name in UnityInputName)
        {
            if (Input.GetButtonUp(name))
            {
                value = Input.GetAxis(name);
                return true;
            }
        }
        return false;
    }
}
