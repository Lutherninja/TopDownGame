using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Kamakazi : MonoBehaviour
{
public GameObject Target;
private NavMeshAgent nma;
public float radius = 3 ;
public float force = 500 ;
bool hasExploded ;
[ SerializeField ] GameObject ExploParticle ;
 void Start () 
 {
  nma = this.GetComponent<UnityEngine.AI.NavMeshAgent>();
 }
 
 void Update () 
 {
 nma.SetDestination(Target.transform.position);
 }

 void OnCollisionEnter(Collision collision)
 {
     if( collision.gameObject.tag == "Player" )
     {
    GameObject spawnedParticle = Instantiate ( ExploParticle , transform . position , transform . rotation );
    Destroy ( spawnedParticle , 1 );
    Collider [] colliders = Physics . OverlapSphere ( transform . position , radius );
    foreach ( Collider nearbyObject in colliders )
    {
        Rigidbody rb = nearbyObject . GetComponent < Rigidbody > ();
        if ( rb != null )
        {
            rb . AddExplosionForce ( force , transform . position , radius );
        }
    }
    hasExploded = true ;
    Destroy ( gameObject );
     }
 }
}
