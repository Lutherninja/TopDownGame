using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GetIntoVehicle : MonoBehaviour
{
    private GameObject Vehicle;
    private VehicleObject vehicleObj;
    public bool InVehicle = false;
    private Transform AttachPoint;
    private float movementSpeed;
    private float rotationSpeed;
    private PlayerMovementManager manager;
    private bool inRange = false;

    public void SetVal(PlayerMovementManager manager)
    {
        this.manager = manager;
    }

    private void FixedUpdate()
    {
        if (inRange)
        {
            if (InVehicle)
            {
                if (Input.GetButtonDown("Item"))
                {
                    Debug.Log("Get Out Vehicle");
                    transform.parent = null;
                    InVehicle = false;
                    manager.MovementEnable(true);
                }

                Vehicle.transform.Rotate(0, Input.GetAxis("Horizontal") * Time.deltaTime * rotationSpeed, 0);
                Vehicle.transform.Translate(0, 0, Input.GetAxis("Vertical") * Time.deltaTime * movementSpeed);
            }
            else
            {
                if (Input.GetButtonDown("Item"))
                {
                    Debug.Log("Get Into Vehicle");
                    InVehicle = true;
                    transform.parent = Vehicle.transform;
                    transform.rotation = AttachPoint.transform.rotation;
                    transform.position = AttachPoint.transform.position;
                    manager.MovementEnable(false);
                }

            }
        }

    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Vehicle"))
        {
            Debug.Log("Vechicle in range");
            manager.WeaponEnable(false);
            inRange = true;
            Vehicle = other.gameObject;
            vehicleObj = Vehicle.GetComponent<VehicleObject>();
            if (vehicleObj != null)
            {
                AttachPoint = vehicleObj.AttachPoint;
                movementSpeed = vehicleObj.movementSpeed;
                rotationSpeed = vehicleObj.rotationSpeed;
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Vehicle"))
        {
            Debug.Log("Vechicle out of range");
            inRange = false;
            manager.WeaponEnable(true);
        }
    }
}
