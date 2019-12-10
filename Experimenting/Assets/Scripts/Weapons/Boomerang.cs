using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boomerang : MonoBehaviour
{
    public Transform playerObject;
    public Rigidbody rigid;
    public float dist;
    public float width;
    public float time;
    public float inclination;
    private Vector3 direction;
   
    
    
    void FixedUpdate () {
        if (Input.GetButtonUp ("E"))
        {
            direction += transform.forward * Time.deltaTime;
            StartCoroutine(Throw());
        }
    }
 
    IEnumerator Throw () 
    {
        Vector3 PlayerPosition = playerObject.transform.position;
        //Vector3 pos = transform.position;
        float height = transform.position.y;
        Quaternion q = Quaternion.FromToRotation (Vector3.forward, direction);
        float timer = 0.0f;
        rigid.AddTorque (0.0f, 400.0f, 0.0f);
        
        while (timer < time) 
        {
            float t = Mathf.PI * 2.0f * timer / time - Mathf.PI/2.0f;
            float x = width * Mathf.Cos(t);
            float z = dist * Mathf.Sin (t);
            
            Vector3 v = new Vector3(x,height,z+dist);
            v = Quaternion.AngleAxis(inclination,Vector3.right)*v;
            rigid.MovePosition(PlayerPosition + (q * v));
            //rigid.MovePosition(pos + (q * v));
            timer += Time.deltaTime;
            yield return null;
        }
        
        rigid.angularVelocity = Vector3.zero;
        rigid.velocity = Vector3.zero;
        rigid.rotation = Quaternion.identity;
        //rigid.MovePosition (pos);
        rigid.MovePosition (PlayerPosition);
        
    }
}