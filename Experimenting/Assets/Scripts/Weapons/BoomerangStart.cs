using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoomerangStart : MonoBehaviour
{
    public GameObject boomerang;
    public float ThrowBoomerang = 3f;
    private bool BoomerangCoolDown;
 
    void Update ()
    {
        if (!BoomerangCoolDown && Input.GetKeyDown(KeyCode.T))
        {
            StartCoroutine(ThrowBoom());
        }
    }

    private IEnumerator ThrowBoom()
    {
    BoomerangCoolDown = true;
    GameObject clone;
    clone = Instantiate(boomerang, new Vector3(transform.position.x, transform.position.y + 1, transform.position.z), transform.rotation) as GameObject;
    yield return new WaitForSeconds(ThrowBoomerang);
    BoomerangCoolDown = false;
    }
}