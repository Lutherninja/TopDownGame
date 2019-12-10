using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Data/Axis Input")]
public class FloatInputAxis : FloatData
{
    public UnityKeyCodeObject Keys;

    public override float Value
    {
        get
        {
            if (Keys.KeyHold())
            {
                return value*Keys.value;
            }

            return 0;
        }
    }
}

