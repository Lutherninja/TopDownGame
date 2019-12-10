using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Dialogue/NPC")]
public class NPCObject : ScriptableObject
{
    public dialogue_lines dialogue;
    public choice_lines choices = null;

    public void SwapLines(dialogue_lines newLines)
    {
        dialogue = newLines;
    }

    public void SwapChoices(choice_lines newChoices)
    {
        choices = newChoices;
    }
    
}
