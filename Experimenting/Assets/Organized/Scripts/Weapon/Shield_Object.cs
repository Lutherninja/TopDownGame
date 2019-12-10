using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Usable Item/Weapon/Shield")]
public class Shield_Object : Usable_Item_Base
{
    private BoxCollider PlayerBoxCollider;
    float m_ScaleX, m_ScaleY, m_ScaleZ;
    public float speedDecrease;
    private EightWayMovement playerMove;
    
    public override IEnumerator UseItem(GameObject itemUsed, GameObject player)
    {
        playerMove = player.GetComponent<EightWayMovement>();
        playerMove.walkingspeed *= speedDecrease;
        playerMove.SetRun(false);
        inUse = true;
        PlayerBoxCollider = itemUsed.GetComponent<BoxCollider>();
        m_ScaleX = 1.0f;
        m_ScaleY = 1.0f;
        m_ScaleZ = 1.0f;
        itemUsed.SetActive(true);
        PlayerBoxCollider.center = PlayerBoxCollider.center = new Vector3(0, 0, -0.2f);
        m_ScaleZ = 0.5f;
        while (!Input.GetButtonUp(InputType))
        {
            PlayerBoxCollider.size = new Vector3(m_ScaleX, m_ScaleY, m_ScaleZ);
            yield return new WaitForFixedUpdate();
        }
        itemUsed.SetActive(false);
        m_ScaleZ = 1.0f;
        PlayerBoxCollider.center = PlayerBoxCollider.center = new Vector3(0, 0, 0);
        playerMove.SetRun(true);
        playerMove.walkingspeed /= speedDecrease;
        inUse = false;
    }

    public override IEnumerator UsePoweredWeapon(GameObject weapon, GameObject player)
    {
        yield return new WaitForFixedUpdate();
    }
}
