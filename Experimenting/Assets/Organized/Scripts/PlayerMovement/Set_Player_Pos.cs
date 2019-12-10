using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Set_Player_Pos : MonoBehaviour
{
    public Player_Object player;
    public GameObject playerObj;

    public void SetTransform()
    {
        GameObject.Find("Player").transform.position = player.loadPos;
    }

    public void SetLoadPos()
    {
        //Debug.Log("SetPos");
        //player.loadPos = GameObject.Find("Player").transform.position;
        player.loadPos = playerObj.transform.position;
    }
}
