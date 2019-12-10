using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetTransforms : MonoBehaviour
{
   public void SetPos(Transform transform)
   {
      gameObject.transform.position = transform.position;
   }

   public void SetPos(Vector3Data position)
   {
      gameObject.transform.position = position.vector;
   }

   public void SetPos(Player_Object player)
   {
      //Debug.Log("Load: " + player.loadPos);
      //Debug.Log("Init: " + gameObject.transform.position);
      //gameObject.GetComponent<CharacterController>().enabled = false;
      gameObject.transform.position = player.loadPos;
      //gameObject.GetComponent<CharacterController>().enabled = true;
      //Debug.Log("after: " + gameObject.transform.position);
   }

}
