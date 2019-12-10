using System.Collections;
using System.Collections.Generic;
using JetBrains.Annotations;
using UnityEngine;

public class Weapon_Manager : MonoBehaviour
{
    public string InputType;
    public Equipped_Items items;
    public GameObject Player;
    public List<GameObject> WeaponAttackObj;
    public float powerUpTime;
    private float startTime, endTime;
    private bool WeaponEnabled;

    public void SetVals(string InputType, Equipped_Items items, GameObject Player,List<GameObject> WeaponAttackObj, float powerUpTime  )
    {
        this.InputType = InputType;
        this.items = items;
        this.Player = Player;
        this.WeaponAttackObj = WeaponAttackObj;
        this.powerUpTime = powerUpTime;
    }

    private void Start()
    {
        EnableWeapons();
    }

    private void FixedUpdate()
    {
        if (items.CurrentItem() == null || !WeaponEnabled)
        {
            return;
        }
        else if (items.CurrentItem().canPowerUp.value)
        {
            if (Input.GetButtonDown(InputType) && !items.CurrentItem().inUse)
            {
                startTime = Time.time;
            }
            else if (Input.GetButtonUp(InputType) && !items.CurrentItem().inUse)
            {
                endTime = Time.time;
                if (endTime - startTime >= powerUpTime)
                {
                    endTime = 0;
                    startTime = 0;
                    StartCoroutine(items.CurrentItem().UsePoweredWeapon(getWeaponAttackObj(), Player));
                }
                else
                {
                    endTime = 0;
                    startTime = 0;
                    StartCoroutine(items.CurrentItem().UseItem(getWeaponAttackObj(), Player));
                }

            }
        }
        else
        {
            if (Input.GetButtonDown(InputType) && !items.CurrentItem().inUse)
            {
                StartCoroutine(items.CurrentItem().UseItem(getWeaponAttackObj(), Player));
            }
        }

    }

    private GameObject getWeaponAttackObj()
    {
        foreach (var weapon in WeaponAttackObj)
        {
            if (weapon.name.ToLower().Contains(items.CurrentItem().name.ToLower()))
            {
                return weapon;
            }
        }
        Debug.Log("No Weapon");
        return null;
    }

    public void EnableWeapons()
    {
        WeaponEnabled = true;
    }

    public void DisableWeapon()
    {
        WeaponEnabled = false;
    }
    
    
}
