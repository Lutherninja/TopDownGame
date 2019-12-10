using System.Collections;
using System.Collections.Generic;
using JetBrains.Annotations;
using UnityEngine;

public class EightWayMovement : MonoBehaviour
{
    [Header("Player movement")]
    public float walkingspeed = 5;
    private float velocity;
    public float turnSpeed = 100;
    Vector2 input;
    float angle;
    Quaternion targetRotation;
    public float RunningSpeed;
    private bool CanRun;
    private bool controls;

    void Start()
    {
        CanRun = true;
        controls = true;
    }

    void FixedUpdate()
    {
        if (controls)
        {
            GetInput();
            if (Mathf.Abs(input.x) < 1 && Mathf.Abs(input.y) < 1) return;
            CalculateDirection();
            Rotate();
            Move();
            Run();
            Run();
        }
    }

    public void SetVals(float walkingspeed, float turnSpeed, float RunningSpeed)
    {
        this.walkingspeed = walkingspeed;
        this.turnSpeed = turnSpeed;
        this.RunningSpeed = RunningSpeed;
    }

    void GetInput()
    {
        input.x = Input.GetAxisRaw("Horizontal");
        input.y = Input.GetAxisRaw("Vertical");
    }

    void CalculateDirection()
    {
        angle = Mathf.Atan2(input.x, input.y);
        angle = Mathf.Rad2Deg * angle;
        //angle += cam.eulerAngles.y;
    }

    void Rotate()
    {
        targetRotation = Quaternion.Euler(0, angle, 0);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, turnSpeed * Time.deltaTime);
    }

    void Move()
    {
        transform.position += transform.forward * velocity * Time.deltaTime;
    }

    void Run()
    {
        if (Input.GetKey(KeyCode.LeftShift) && CanRun)
        {
            velocity = RunningSpeed;

        }
        else
        {
            velocity = walkingspeed;

        }

    }

    public void CancelControls()
    {
		controls = false;
	}
    public void ResumeControls()
    {
		controls = true;
	}

    public void SetRun(bool run)
    {
        CanRun = run;
    }
    
    
}
