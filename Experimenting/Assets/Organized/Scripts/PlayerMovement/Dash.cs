using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dash : MonoBehaviour
{
    float _doubleTapTime = .15f;
    private bool doubleTapD, doubleTapW, running;
    private string moveDirection;
    private float time, startTime;
    public float DashSpeed;
    public float dashDuration = 0.5f;
    private bool canDash;
    private Rigidbody rb;

    public void SetVals(float DashSpeed, float dashDuration)
    {
        this.DashSpeed = DashSpeed;
        this.dashDuration = dashDuration;
    }
    
    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        canDash = true;
        Call();
    }

    public void Call()
    {
        time = 0;
        running = true;
        StartCoroutine(RunDash());
        StartCoroutine(Timer());
    }

    private IEnumerator RunDash()
    {
        while (running)
        {
            if (canDash)
            {
                if (Input.GetKeyDown(KeyCode.D) && moveDirection != "D")
                {

                    moveDirection = "D";
                    time = 0;
                }
                else if (Input.GetKeyDown(KeyCode.W) && moveDirection != "W")
                {

                    moveDirection = "W";
                    time = 0;
                }
                else if (Input.GetKeyDown(KeyCode.S) && moveDirection != "S")
                {

                    moveDirection = "S";
                    time = 0;
                }
                else if (Input.GetKeyDown(KeyCode.A) && moveDirection != "A")
                {

                    moveDirection = "A";
                    time = 0;
                }

                else if (Input.GetKeyDown(KeyCode.D) && moveDirection == "D")
                {
                    //Debug.Log("Dash D");
                    StartCoroutine(DashAct("D"));
                }

                else if (Input.GetKeyDown(KeyCode.W) && moveDirection == "W")
                {
                    //Debug.Log("Dash W");
                    StartCoroutine(DashAct("W"));
                }

                else if (Input.GetKeyDown(KeyCode.S) && moveDirection == "S")
                {
                    //Debug.Log("Dash S");
                    StartCoroutine(DashAct("S"));
                }

                else if (Input.GetKeyDown(KeyCode.A) && moveDirection == "A")
                {
                    // Debug.Log("Dash A");
                    StartCoroutine(DashAct("A"));
                }
            }

            //yield return new WaitForFixedUpdate();
            yield return new WaitUntil(()=>Input.anyKey);
        }
    }

    private IEnumerator DashAct(string direction)
    {
        if (direction == moveDirection)
        {
            //Debug.Log("Dash");
            rb.velocity = (transform.forward * DashSpeed);
            //time = 0;
           // moveDirection = "";
            yield return new WaitForSeconds(dashDuration);
            rb.velocity = Vector3.zero;
            yield return new WaitForSeconds(.3f);
            time = 0;
            moveDirection = "";
        }
    }

    private IEnumerator Timer()
    {
        while (running)
        {
            yield return new WaitForSeconds(.01f);
            time += .01f;
            if (time > _doubleTapTime)
            {
                time = 0;
                moveDirection = "";
            }
        }
    }

    public void SetDash(bool value)
    {
        canDash = value;
    }
}