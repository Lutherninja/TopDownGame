using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pushing_Script : MonoBehaviour
{
   private bool canPush, isPushing;
   private Pushable_Object_holder obj;
   public float speed = 1;
   private Vector3 newPosPushable, newPosPlayer, pos, nextDestPlay, nextDestPush;
   private float offset = 0.05f, scale = 1;
   private GameObject pushObj;
   private PlayerMovementManager manager;

   public void SetVals(float speed, PlayerMovementManager manager)
   {
      this.speed = speed;
      this.manager = manager;
   }

   private void Start()
   {
      canPush = false;
      isPushing = false;
   }

   private IEnumerator OnCollisionEnter(Collision other)
   {
      if (other.gameObject.CompareTag("Pushable"))
      {
         pushObj = other.gameObject;
         if (!isPushing)
         {
            obj = other.gameObject.GetComponent<Pushable_Object_holder>();
            if (obj.obj.isPushable)
            {
               canPush = true;
               CheckDirection();
               yield return new WaitForSeconds(.25f);
               if (canPush)
               {
                  manager.MovementEnable(false);
                  manager.WeaponEnable(false);
                  StartCoroutine(Pushing(pushObj));
               }
            }
         }
      }
   }

   private void OnCollisionExit(Collision other)
   {
      if (other.gameObject.CompareTag("Pushable") && !isPushing)
      {
         canPush = false;
      }
   }
   
   private Vector3 GetDirection(float angle)
   {
      Vector3 direction = new Vector3();
      if ((angle >= 80 && angle <= 100))
         direction.x = 1;
      else if ((angle >= 170 && angle <= 190))
         direction.z = -1;
      else if ((angle >= -100 && angle <= -80) || angle >= 260 && angle <= 280)
         direction.x = -1;
      else if ((angle >= -10 && angle <= 10))
         direction.z = 1;
      return direction;     
   }


   private void CheckDirection()
   {
      pos = GetDirection(transform.rotation.eulerAngles.y);
      if (pos.x > 0 && !obj.negX.isBlocked)
      {
         if ((obj.obj.PushDirection.x > 0 || obj.obj.PushDirection.y > 0))
            return;
      }
      else if (pos.x < 0 && !obj.posX.isBlocked)
      {
         if ((obj.obj.PushDirection.x < 0 || obj.obj.PushDirection.y > 0))
            return;
      }
      else if (pos.z > 0 && !obj.negZ.isBlocked)
      {
         if ((obj.obj.PushDirection.z > 0 || obj.obj.PushDirection.y > 0))
            return;
      }
      else if (pos.z < 0 && !obj.posZ.isBlocked)
      {
         if ((obj.obj.PushDirection.z < 0 || obj.obj.PushDirection.y > 0))
            return;
      }
      canPush = false;
      return;
   }

   private IEnumerator Pushing(GameObject objToPush)
   {
      canPush = false;
      isPushing = true;
      newPosPlayer = transform.position;
      newPosPushable = objToPush.transform.position;
      pos *= obj.obj.pushAmount;
      newPosPlayer += pos;
      newPosPushable += pos;
      scale = 1;
      //Rigidbody objRig = objToPush.GetComponent<Rigidbody>();
      //objRig.constraints = RigidbodyConstraints.FreezeRotation;
      while ((objToPush.transform.position.x > newPosPushable.x + offset) 
             || (objToPush.transform.position.x < newPosPushable.x - offset)
             || (objToPush.transform.position.z > newPosPushable.z + offset)
             ||  (objToPush.transform.position.z < newPosPushable.z - offset))
      {
         //Debug.Log("dest: "  + newPosPushable + " current:" + objToPush.transform.position);
         nextDestPush = Vector3.Lerp(objToPush.transform.position, newPosPushable, speed * scale * Time.deltaTime);
         nextDestPlay = Vector3.Lerp(transform.position, newPosPlayer, speed * scale* Time.deltaTime);
         objToPush.GetComponent<Rigidbody>().MovePosition(nextDestPush);
         GetComponent<Rigidbody>().MovePosition(nextDestPlay);
         scale += Time.deltaTime * 10;
         yield return new WaitForFixedUpdate();
      }

      objToPush.transform.position = newPosPushable;
      transform.position = newPosPlayer;
      yield return new WaitForSeconds(.1f);
      //objRig.constraints = RigidbodyConstraints.FreezeAll;
      manager.MovementEnable(true);
      manager.WeaponEnable(true);
      isPushing = false;
      canPush = false;
      obj.obj.AfterPush.Invoke();
   }
}
