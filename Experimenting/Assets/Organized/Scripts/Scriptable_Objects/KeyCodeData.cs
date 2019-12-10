using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public abstract class KeyCodeData : ScriptableObject
{
   public abstract bool KeyDown();
   public abstract bool KeyHold();
   public abstract bool KeyUp();
}
