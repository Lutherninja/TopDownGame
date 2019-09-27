using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordAttack : MonoBehaviour
{
     public GameObject Sword;
    void Update()
    {
        if (Input.GetButtonDown("E"))
        {
            Sword.SetActive(true);
           print ("slash");
        }
        else
        {
           Sword.SetActive(false); 
        
        }
    }
}
