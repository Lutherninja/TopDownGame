using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Puzzle/Puzzle String")]
public class PuzzleStringData : StringData
{
    public string correctVal;
    public bool Completed;

    public void Reset()
    {
        value = "";
        Completed = false;
    }

    public void Add(string val)
    {
        value += val;
        CheckString();
    }

    public bool CheckString()
    {
        if (!Completed)
        {
            if (value[value.Length - 1] != correctVal[value.Length - 1])
            {
                if (value[value.Length - 1] == correctVal[0])
                {
                    value = correctVal[0].ToString();
                }
                else
                {
                    value = "";
                }
            }
            else if (value.Length == correctVal.Length)
            {
                Completed = true;
                return true;
            }
        }
        return false;
    }
}
