using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Bomb_Obj : Pickup_Obj
{
    public ParticleSystem exploParticle;
    public float radius = 3 ;
    public float force = 500 ;
    bool hasExploded;
    float countdown ;
    Animator anim;
    public string animationName;
    private Rigidbody bombrigid;
    public int DamageAmountPlayer, DamageAmountEnemy, DamageAmountBoss;
    public UnityEvent onExplode;

    private void Start()
    {
        bombrigid = GetComponent<Rigidbody>();
        anim = GetComponent<Animator>();
        if(animationName != "" && anim!=null)
            waitTime = AnimationLength(animationName);
    }

    public void StartCountDown()
    {
        StartCoroutine(CountDown());
    }

    public IEnumerator CountDown()
    {
        yield return new WaitForSeconds(waitTime);
        StartCoroutine(Explode());
    }

    private IEnumerator Explode()
    {
        bombrigid.constraints = RigidbodyConstraints.FreezeAll;
        exploParticle.Play();
        Collider [] colliders = Physics . OverlapSphere ( transform . position , radius);
        foreach ( Collider nearbyObject in colliders )
        {
            Rigidbody rb = nearbyObject . GetComponent < Rigidbody > ();
            if (nearbyObject.CompareTag("Player"))
            {
                nearbyObject.GetComponent<PlayerMovementManager>().DecreaseHealth(DamageAmountPlayer);
            }
            else if (nearbyObject.CompareTag("Enemy"))
            {
                nearbyObject.GetComponent<EnemyHealth>().curHealth -= DamageAmountEnemy;
            }
            else if (nearbyObject.CompareTag("Boss"))
            {
                nearbyObject.GetComponent<HealthHolder>().health.DecreaseAmount(DamageAmountBoss);
            }
            if ( rb != null )
            {
                rb . AddExplosionForce ( force , transform . position , radius );
            }
        }
        hasExploded = true ;
        gameObject.GetComponentInChildren<MeshRenderer>().enabled = false;
        yield return new WaitForSeconds(exploParticle.duration);
        onExplode.Invoke();
    }
    
    float AnimationLength(string name) 
    {
        float time = 0;
        RuntimeAnimatorController ac = anim.runtimeAnimatorController;   
 
        for (int i = 0; i < ac.animationClips.Length; i++)
            if (ac.animationClips[i].name == name)
                time = ac.animationClips[i].length;
 
        return time;
    }

    public void DestroyObj(GameObject obj)
    {
        Destroy(obj);
    }

}

