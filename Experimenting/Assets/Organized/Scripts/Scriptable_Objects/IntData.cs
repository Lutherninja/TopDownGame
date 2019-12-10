using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Data/int")]
public class IntData : Saving_Object_Base
{
    public int value;
    public int maxVal = 9999;
    public int minVal = -9999;

    public void Decrease()
    {
        value--;
        if (value < minVal)
        {
            value = minVal;
        }
    }

    public void Increase()
    {
        value++;
        if (value > maxVal)
        {
            value = maxVal;
        }
    }

    public virtual void DecreaseAmount(int amount)
    {
        value -= amount;
        if (value < minVal)
        {
            value = minVal;
        }
    }

    public virtual void IncreaseAmount(int amount)
    {
        value += amount;
        if (value > maxVal)
        {
            value = maxVal;
        }
    }

    public void SetAmount(int amount)
    {
        value = amount;
    }

    public void MaxAmount()
    {
        value = maxVal;
    }

    public void MinAmount()
    {
        value = minVal;
    }
    
    public void DecreaseMaxAmount(int amount)
    {
        maxVal -= amount;
    }

    public void IncreaseMaxAmount(int amount)
    {
        maxVal += amount;
    }

    public void SetMaxAmount(int amount)
    {
        maxVal = amount;
    }
    
    public void DecreaseMinAmount(int amount)
    {
        minVal -= amount;
    }

    public void IncreaseMinAmount(int amount)
    {
        minVal += amount;
    }

    public void SetMinAmount(int amount)
    {
        minVal = amount;
    }


    public override void Set(ScriptableObject obj)
    {
        IntData intdata = obj as IntData;
        if (intdata == null)
            return;
        value = intdata.value;
        maxVal = intdata.maxVal;
        minVal = intdata.minVal;
    }
}
