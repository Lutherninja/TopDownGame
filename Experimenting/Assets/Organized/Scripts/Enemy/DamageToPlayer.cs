using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DamageToPlayer : MonoBehaviour
{
    public int AmountOfDamage;

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag.Equals("Player"))
        {
            collision.gameObject.GetComponent<PlayerMovementManager>().playerHealth.health.value -= AmountOfDamage; 
            print ("damage taken");
        }
    }
    private void OnTriggerEnter(Collider collision)
    {
        if (collision.gameObject.tag.Equals("Player"))
        {
            collision.gameObject.GetComponent<PlayerMovementManager>().playerHealth.health.value -= AmountOfDamage; 
            print ("damage taken");
        }
    }
}
