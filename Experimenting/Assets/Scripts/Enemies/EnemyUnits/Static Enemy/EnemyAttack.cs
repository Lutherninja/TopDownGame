using UnityEngine;
using System.Collections;
public class EnemyAttack : MonoBehaviour
{
    public Transform Player;
    public float MoveSpeed = 4;
    public float MaxDist = 10;
    public float MinDist = 5;
    

    void FixedUpdate()
    {
        transform.LookAt(Player);

        if (Vector3.Distance(transform.position, Player.position) >= MinDist)
        {

            transform.position += transform.forward * MoveSpeed * Time.deltaTime;



            if (Vector3.Distance(transform.position, Player.position) <= MaxDist)
            {
                //Here Call any function U want Like Shoot at here or something
            }

        }
    }
}