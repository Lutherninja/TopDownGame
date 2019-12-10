using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;

public class PlayerMovementManager : MonoBehaviour
{
    [HideInInspector] public Jump jump;
    [HideInInspector] public EightWayMovement eightWayMovement;
    [HideInInspector] public Dash dash;
    [HideInInspector] public Weapon_Manager weaponManager;
    [HideInInspector] public PlayerHealth playerHealth;
    [HideInInspector] public Player_Pickup playerPickup;
    [HideInInspector] public GetIntoVehicle vehicle;
    [HideInInspector] public Pushing_Script pushScript;
    
    [Header("Jump Values")]
    public float jumpSpeed = 5;
    public int MAX_JUMPS = 1;
    public BoolData wallJump;
    
    [Header("Player Movement Values")]
    public float walkingspeed = 5;
    public float turnSpeed = 100;
    public float RunningSpeed;
    
    [Header("Dash Values")]
    public float DashSpeed;
    public float dashDuration = 0.5f;
    
    [Header("Weapon Values")]
    public string InputType;
    public Equipped_Items items;
    public List<GameObject> WeaponAttackObj;
    public float powerUpTime;
    
    [Header("Player Health")]
    public IntData health;
    public IntData numOfHearts;
    public List<Image> hearts;
    public Sprite fullHeart;
    public Sprite emptyHeart;

    [Header("Pickup Values")] 
    public Transform SnapZone;
    public float throwForce;

    [Header("Push Values")] 
    public float pushSpeed;
    
    private void Start()
    {
        jump = gameObject.AddComponent<Jump>();
        jump.SetVals(jumpSpeed, MAX_JUMPS, wallJump, this);
        eightWayMovement = gameObject.AddComponent<EightWayMovement>();
        eightWayMovement.SetVals(walkingspeed, turnSpeed, RunningSpeed);
        dash = gameObject.AddComponent<Dash>();
        dash.SetVals(DashSpeed, dashDuration);
        weaponManager = gameObject.AddComponent<Weapon_Manager>();
        weaponManager.SetVals(InputType, items, gameObject, WeaponAttackObj, powerUpTime);
        playerHealth = gameObject.AddComponent<PlayerHealth>();
        playerHealth.SetVals(health, numOfHearts, hearts, fullHeart, emptyHeart);
        playerPickup = gameObject.AddComponent<Player_Pickup>();
        playerPickup.SetVals(SnapZone, throwForce, this);
        vehicle = gameObject.AddComponent<GetIntoVehicle>();
        vehicle.SetVal(this);
        pushScript = gameObject.AddComponent<Pushing_Script>();
        pushScript.SetVals(pushSpeed, this);
    }

    public void JumpEnable(bool enable)
    {
        jump.enabled = enable;
    }

    public void MovementEnable(bool enable)
    {
        if (enable)
        {
            eightWayMovement.ResumeControls();
        }
        else
        {
            eightWayMovement.CancelControls();
        }
    }

    public void RunEnable(bool enable)
    {
        eightWayMovement.SetRun(enable);
    }

    public void DashEnable(bool enable)
    {
        dash.SetDash(enable);
    }

    public void WeaponEnable(bool enable)
    {
        if (enable)
        {
            Debug.Log("WeaponEnable");
            weaponManager.EnableWeapons();
        }
        else
        {
            Debug.Log("WeaponDisable");
            weaponManager.DisableWeapon();
        }
    }

    public void DecreaseHealth(int damage)
    {
        playerHealth.health.DecreaseAmount(damage);
    }

    public void IncreaseHealth(int amount)
    {
        playerHealth.health.IncreaseAmount(amount);
    }
    
}
