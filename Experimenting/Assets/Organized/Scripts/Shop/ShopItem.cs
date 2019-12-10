using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
public class ShopItem : MonoBehaviour
{
    public IntData Money;
    public Inventory_List collectedItems;
    public UnityEvent CannotAffordEvent, AtMaxEvent, HasItemEvent, BoughtEvent;
    public Item_Base item;
    public int cost = 100;
    public int amountToBuy = 1;

    private void Bought()
    {
        Money.DecreaseAmount(cost);
        if (item is Usable_Amount_Item)
        {
            if (collectedItems.items.Contains(item))
            {
                (item as Usable_Amount_Item).amount.IncreaseAmount(amountToBuy);
            }
            else
            {
                collectedItems.AddItem(item);
                (item as Usable_Amount_Item).amount.value = amountToBuy;
            }
        }
        else if (item is Non_Usable_Amount_Item)
        {
            if (collectedItems.items.Contains(item))
            {
                (item as Non_Usable_Amount_Item).amount.IncreaseAmount(amountToBuy);
            }
            else
            {
                collectedItems.AddItem(item);
                (item as Non_Usable_Amount_Item).amount.value = amountToBuy;
            }
        }
        else
        {
            collectedItems.AddItem(item);
        }
        Debug.Log("Buy");
        BoughtEvent.Invoke();
    }

    public void Buy()
    {
        //can afford
        if (Money.value >= cost)
        {
            //can have multiple
            if (item is Usable_Amount_Item)
            {
                Usable_Amount_Item it = item as Usable_Amount_Item;
                //Has Max
                if (it.amount.value >= it.amount.maxVal)
                {
                    Debug.Log("Max");
                    AtMaxEvent.Invoke();
                }
                //Not at Max
                else
                {
                    Bought();
                }
            }
            else if (item is Non_Usable_Amount_Item)
            {
                Non_Usable_Amount_Item it = item as Non_Usable_Amount_Item;
                if (it.amount.value >= it.amount.maxVal)
                {
                    Debug.Log("Max");
                    AtMaxEvent.Invoke();
                }
                else
                {
                    Bought();
                }
            }
            //single only
            else
            {
                //already have one
                if (collectedItems.items.Contains(item))
                {
                    Debug.Log("Has");
                    HasItemEvent.Invoke();
                }
                //does not have one
                else
                {
                    Bought();
                }
            }
        }
        //cannot afford
        else
        {
            Debug.Log("Can't Afford");
            CannotAffordEvent.Invoke();
        }
    } 

}
