﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class MageEnemy : MonoBehaviour
{
    private NavMeshAgent nav;
    
    [Header("Target and ReturnPoint")] 
    public Transform Player;
    public Transform OrigianlPosition;
    
    [Header("EnemyValues")] 
    public float LookAtSpeed = 3;
    public float MaxDistAwayFromPlayer = 10;
    public float MinDist = 1;
    
    
    private float swordactive = 0.5f;
    
    [Header("EnemyAttack")] 
    public GameObject EnemSwordWeapon;
    public bool FollowingShots;
    public bool DirectShots;
    float startTimer;
    public float attackCoolDown;

    void Start()
    {
        nav = GetComponent<NavMeshAgent>();

    }

    public void FollowPlayerWhenInRange()
    {
        var rotation = Quaternion.LookRotation(Player.position - transform.position);
        transform.rotation = Quaternion.Slerp(transform.rotation, rotation, Time.deltaTime * LookAtSpeed);
        //the script above is the equivalent of "look at" but witha  smoth

        Player = GameObject.FindGameObjectWithTag("Player").transform;

        var minDist = MinDist;
        if (Vector3.Distance(transform.position, Player.position) >= minDist
        ) //this checks the distance between enemy and player
        {
            nav.SetDestination(Player.position);



            if (Vector3.Distance(transform.position, Player.position) <= MaxDistAwayFromPlayer
            ) //this checks the distance between enemy and player
            {
                nav.SetDestination(transform.position);
                
                //Do Stuff Like Attack
                if (FollowingShots == true)
                {
                    startTimer += Time.deltaTime;
                    if (startTimer >= attackCoolDown)
                    {
                        startTimer = 0f;
                        StartCoroutine(FollowingShotss());
                    }
                }
                if (DirectShots == true)
                        {
                
                        }
            }

        }
    }

    public void GoBackToOriginalPosition()
    {

        if (Vector3.Distance(transform.position, OrigianlPosition.position) >= MinDist)
        {
            nav.SetDestination(OrigianlPosition.position);
            print("GoingbackToPosition");
            
        }
    }

    IEnumerator FollowingShotss()
    {
        EnemSwordWeapon.SetActive(true);
        yield return new WaitForSeconds(swordactive);
        EnemSwordWeapon.SetActive(false);
    }

    public void DirectShotss()
    {
        
    }


}