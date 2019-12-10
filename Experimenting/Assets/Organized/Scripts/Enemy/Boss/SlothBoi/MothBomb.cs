using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;

[RequireComponent(typeof(NavMeshAgent))]
public class MothBomb : MonoBehaviour
{
    private Vector3 destination;
    private GameObject player;
    private float timeleft;
    private bool Hit = false;
    private float groundHeight = .5f;
    private NavMeshAgent agent;
    public Rigidbody BombRigid;
    public UnityEvent OnHit;
    
    private void Start()
    {
        player = GameObject.Find("Player");
        agent = GetComponent<NavMeshAgent>();
        StartCoroutine(FollowPlayer());
    }

    private IEnumerator FollowPlayer()
    {
        while (!Hit)
        {
            agent.destination = player.transform.position;
            yield return new WaitForFixedUpdate();
        }
    }


    private void OnCollisionEnter(Collision other)
    {
        Debug.Log("Hit");
        gameObject.GetComponent<BoxCollider>().enabled = false;
        Hit = true;
        BombRigid.useGravity = true;
        BombRigid.isKinematic = false;
        OnHit.Invoke();
    }
}
