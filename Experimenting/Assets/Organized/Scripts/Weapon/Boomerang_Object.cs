using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Usable Item/Weapon/Boomerang")]
public class Boomerang_Object : Usable_Item_Base
{
    private Rigidbody rigid;
    public float dist;
    public float width;
    public float time;
    public float inclination;
    private Vector3 direction;
    private float timer, height;
    private Quaternion q;
    private Vector3 PlayerPosition, v;
    private float t, x, z;
   
    
    public override IEnumerator UseItem(GameObject itemUsed, GameObject player)
    {
        inUse = true;
        rigid = itemUsed.GetComponent<Rigidbody>();
        direction += itemUsed.transform.forward * Time.deltaTime;
        PlayerPosition = player.transform.position;
        height = itemUsed.transform.position.y;
        q = Quaternion.FromToRotation(Vector3.forward, direction);
        timer = 0.0f;
        rigid.AddTorque (0.0f, 400.0f, 0.0f);
        
        while (timer < time) 
        {
            t = Mathf.PI * 2.0f * timer / time - Mathf.PI/2.0f;
            x = width * Mathf.Cos(t);
            z = dist * Mathf.Sin (t);
            v = new Vector3(x,height,z+dist);
            v = Quaternion.AngleAxis(inclination,Vector3.right)*v;
            rigid.MovePosition(PlayerPosition + (q * v));
            timer += Time.deltaTime;
            yield return null;
        }
        
        rigid.angularVelocity = Vector3.zero;
        rigid.velocity = Vector3.zero;
        rigid.rotation = Quaternion.identity;
        rigid.MovePosition (PlayerPosition);
        inUse = false;
    }
    
    public override IEnumerator UsePoweredWeapon(GameObject weapon, GameObject player)
    {
        yield return new WaitForFixedUpdate();
    }

}
