using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Usable Item/Potion")]
public class Potion : Usable_Amount_Item
{
    public IntData dataToChange; //magic or health??
    public int amountToChange;
    
    public override IEnumerator UseItem(GameObject itemUsed, GameObject player)
    {
        if (amount.value > 0)
        {
            inUse = true;
            dataToChange.IncreaseAmount(amountToChange);
            amount.Decrease();
            yield return new WaitForSeconds(1);
            inUse = false;
        }
        yield return new WaitForFixedUpdate();
    }

    public override IEnumerator UsePoweredWeapon(GameObject weapon, GameObject player)
    {
        throw new System.NotImplementedException();
    }
}
