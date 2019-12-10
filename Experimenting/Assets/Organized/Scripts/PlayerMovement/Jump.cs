using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Jump : MonoBehaviour
{
    public float jumpSpeed = 5;
    private Rigidbody rigidBody;
    private bool onGround = true, collided = false, canJump = true;
    public int MAX_JUMPS = 2;
    public BoolData wallJump;
    private int currentJump = 0;
    private Vector3 jumpDirection;
    private PlayerMovementManager manager;
    private Vector3 newRot;
    private float gravity = 0;
    private Vector3 velocity;
    
    void Start()
    {
        canJump = true;
        onGround = true;
        rigidBody = GetComponent<Rigidbody>();
        StartCoroutine(JumpFunc());
    }

    public void SetVals(float jumpSpeed, int MaxJumps, BoolData wallJump, PlayerMovementManager manager)
    {
        this.jumpSpeed = jumpSpeed;
        this.MAX_JUMPS = MaxJumps;
        this.wallJump = wallJump;
        this.manager = manager;
    }

    public void StartJump()
    {
        canJump = true;
        StartCoroutine(JumpFunc());
    }

    public void StopJump()
    {
        canJump = false;
        StopCoroutine(JumpFunc());
    }
    
    private IEnumerator JumpFunc()
    {
        while (canJump)
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                if (onGround || MAX_JUMPS > currentJump)
                {
                    gravity = 0;
                    rigidBody.AddForce(Vector3.up * jumpSpeed, ForceMode.Impulse);
                    onGround = false;
                    currentJump++;
                }
                else if (wallJump.value)
                {
                    if (collided)
                    {
                        gravity = 0;
                        Debug.Log("Wall Jump");
                        manager.MovementEnable(false);
                        jumpDirection = GetDirection(transform.rotation.eulerAngles.y);
                        newRot = transform.rotation.eulerAngles;
                        newRot.y = (newRot.y + 180) % 360;
                        transform.rotation = Quaternion.Euler(newRot);
                        jumpDirection *= -1f;
                        jumpDirection.y = 1.5f;
                        jumpDirection *= jumpSpeed;
                        rigidBody.AddForce(jumpDirection, ForceMode.Impulse);
                        yield return new WaitForSeconds(.25f);
                        manager.MovementEnable(true);
                    }
                }
            }

            if (gravity < 1)
                gravity += Time.deltaTime;
            if (gravity > 1)
                gravity = 1;
            velocity = rigidBody.velocity;
            velocity.y -= gravity;
            rigidBody.velocity = velocity;
            yield return new WaitForFixedUpdate();
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
    
    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Ground"))
        {
            onGround = true;
            currentJump = 0;
        }
        else if(wallJump.value)
        {
            gravity = 0;
            collided = true;
        }
    }

    /*private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Wall") && wallJump.value)
        {
            gravity = 0;
            collided = true;
        }
    }*/

    private void OnCollisionExit(Collision other)
    {
        collided = false;
    }
}