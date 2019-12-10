using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Usable_Item_Base : Item_Base
{
    public abstract IEnumerator UseItem(GameObject itemUsed, GameObject player);
    public abstract IEnumerator UsePoweredWeapon(GameObject weapon, GameObject player);
    //[HideInInspector]
    public bool inUse;

    public BoolData canPowerUp;
    public string InputType;
}
