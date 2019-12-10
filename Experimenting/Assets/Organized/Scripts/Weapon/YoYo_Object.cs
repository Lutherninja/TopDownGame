using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Usable Item/Weapon/YoYo")]
public class YoYo_Object : Usable_Item_Base
{
    public GameObject YoYoPrefab;
    public float ThrowBoomerang = 3f;
    GameObject clone;
    
    public override IEnumerator UseItem(GameObject itemUsed, GameObject player)
    {
        inUse = true;
        clone = Instantiate(YoYoPrefab, new Vector3(player.transform.position.x, player.transform.position.y + 1, player.transform.position.z), player.transform.rotation) as GameObject;
        yield return new WaitForSeconds(ThrowBoomerang);
        inUse = false;
    }
    
    public override IEnumerator UsePoweredWeapon(GameObject weapon, GameObject player)
    {
        yield return new WaitForFixedUpdate();
    }
    

}
