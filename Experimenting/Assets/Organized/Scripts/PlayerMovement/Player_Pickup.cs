using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Player_Pickup : MonoBehaviour
{
    private GameObject pickupVol;
    public Transform SnapZone;
    private bool isUp;
    private bool inRange;
    public bool canPick;
    private bool pickedUp;
    private bool thrown;
    private bool throwincontainer;
    public float throwForce = 10;
    private Rigidbody objRB;
    private Pickup_Obj pickupObj;
    private PlayerMovementManager manager;
    private Vector3 throwdistance;

    public void SetVals(Transform SnapZone, float throwForce, PlayerMovementManager manager)
    {
        this.SnapZone = SnapZone;
        this.throwForce = throwForce;
        this.manager = manager;
    }
    
    public void Start()
    {
        inRange = false;
        pickedUp = false;
        canPick = true;
        thrown = false;
        StartCoroutine(UpdatePickUp());
    }
    
    // Update is called once per frame
    public IEnumerator UpdatePickUp()
    {
        while (true)
        {
            yield return new WaitUntil(() => Input.GetButtonDown("Item"));
            if (canPick && inRange)
            {
                if (pickupObj != null && pickupObj.isHeavy)
                {

                }
                else
                {
                    Debug.Log("Pickup");
                    if (pickupObj != null)
                        pickupObj.onPickup.Invoke();
                    pickedUp = true;
                    canPick = false;
                    pickupVol.transform.position = SnapZone.transform.position;
                    pickupVol.transform.SetParent(SnapZone.transform);
                }
            }

            else if (pickedUp)
            {
                if (throwincontainer)
                {
                    objRB.isKinematic = false;
                    thrown = true;
                    pickedUp = false;
                    canPick = true;
                    pickupVol.transform.parent = null;
                    throwdistance = SnapZone.forward;
                    throwdistance.y = throwForce;
                    objRB.AddForce(throwdistance, ForceMode.Impulse);
                    StartCoroutine(Thrown());
                }
                else
                {
                    Debug.Log("Throw");
                    objRB.isKinematic = false;
                    thrown = true;
                    pickedUp = false;
                    canPick = true;
                    pickupVol.transform.parent = null;
                    objRB.AddForce(SnapZone.forward * throwForce, ForceMode.Impulse);
                    StartCoroutine(Thrown());
                }
            }
            yield return new WaitUntil(()=>Input.GetButtonUp("Item"));
        }

    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Pickup") && canPick)
        {
            //Debug.Log("pickup in range");
            manager.WeaponEnable(false);
            inRange = true;
            pickupVol = other.gameObject;
            objRB = pickupVol.GetComponent<Rigidbody>();
            pickupObj = pickupVol.GetComponent<Pickup_Obj>();
        }
        if (other.CompareTag("ItemContainer") && pickedUp)
        {
            throwincontainer = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Pickup") && !pickedUp)
        {
            //Debug.Log("pickup out of range");
            manager.WeaponEnable(true);
            inRange = false;
        }
        if (other.CompareTag("ItemContainer"))
        {
            throwincontainer = false;
        }

        
    }

    public void PlayerisinPickUpZone()
    {
        inRange = true;
    }

    public void PlayerLeftZone()
    {

        inRange = false;
    }

    IEnumerator Thrown()
    {
        if (pickupObj != null)
        {
            yield return new WaitForSeconds(pickupObj.waitTime);
            pickupObj.onThrow.Invoke();
        }
        manager.WeaponEnable(true);
        inRange = false;
        thrown = false;
    }
}
