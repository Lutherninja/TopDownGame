using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Inventory/EquippedList")]
public class Equipped_Items : Saving_Object_Base
{
    public int CurrentEquip;
    public List<Usable_Item_Base> items = new List<Usable_Item_Base>(){null, null, null, null};

    public Usable_Item_Base CurrentItem()
    {
        return items[CurrentEquip];
    }

    public override void Set(ScriptableObject obj)
    {
        Equipped_Items list = obj as Equipped_Items;
        if (list == null)
            return;
        CurrentEquip = list.CurrentEquip;
        items = new List<Usable_Item_Base>(){null, null, null, null};
        for (int i = 0; i < 4; i++)
        {
            items[i] = list.items[i];
        }
    }
}
