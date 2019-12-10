using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Inventory/Inventory_List")]
public class Inventory_List : Saving_Object_Base
{
    public List<Item_Base> items;

    public void AddItem(Item_Base item)
    {
        items.Add(item);
    }

    public void RemoveItem(Item_Base item)
    {
        items.Remove(item);
    }

    public override void Set(ScriptableObject obj)
    {
        items = new List<Item_Base>();
        Inventory_List list = obj as Inventory_List;
        if (list == null)
            return;
        foreach (var item in list.items)
        {
            items.Add(item);
        }
    }
}
