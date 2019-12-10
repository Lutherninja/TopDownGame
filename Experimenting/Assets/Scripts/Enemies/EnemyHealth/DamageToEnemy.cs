using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DamageToEnemy : MonoBehaviour
{
 
//Weapon Collider Script (Sword)
EnemyHealth enemyHealth;
public float nextHitTime = 0.5f;
public int Damage = 1;
private float nextHit;

void Start()
    {
        nextHit = Time.time;
    }
 
void OnTriggerEnter(Collider hit)
        {
            if(hit.gameObject.tag == "Enemy" && nextHit <= Time.time)
            {
            hit.gameObject.GetComponent<EnemyHealth>().curHealth -= Damage; 
            nextHit = Time.time + nextHitTime;
            }
            
            else if (hit.gameObject.CompareTag("Boss") && nextHit <= Time.time)
            {
                hit.gameObject.GetComponentInParent<HealthHolder>().health.DecreaseAmount(Damage);
                nextHit = Time.time + nextHitTime;
            }
        }
}
