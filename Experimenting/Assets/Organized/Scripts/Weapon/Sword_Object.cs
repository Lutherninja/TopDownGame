using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Usable Item/Weapon/Sword")]
public class Sword_Object : Usable_Item_Base
{
    private float swordactive = 0.2f;
    private EightWayMovement playerMove;
    public float speedDecrease;
    public float coolDownTime = .5f;
    
    public override IEnumerator UseItem(GameObject itemUsed, GameObject player)
    {
        inUse = true;
        itemUsed.SetActive(true);
       playerMove = player.GetComponent<EightWayMovement>();
       playerMove.walkingspeed = playerMove.walkingspeed * speedDecrease;
       playerMove.SetRun(false);
       yield return new WaitForSeconds(swordactive);
       playerMove.walkingspeed = playerMove.walkingspeed / speedDecrease;
       playerMove.SetRun(true);
        itemUsed.SetActive(false);
        yield return new WaitForSeconds(coolDownTime);
        inUse = false;
    }

    public override IEnumerator UsePoweredWeapon(GameObject weapon, GameObject player)
    {
        Debug.Log("Super Attack");
        yield return new WaitForFixedUpdate();
        inUse = false;
    }
}
