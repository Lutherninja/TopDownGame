using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class OnCollisionEvents : MonoBehaviour
{
    public List<string> tagsToCompare;
    public UnityEvent CollisionEnter, CollisionStay, CollisionExit;
    private bool collidedWith;
    private GameObject objCollided;

    private void OnCollisionEnter(Collision other)
    {
        foreach (var tag in tagsToCompare)
        {
            if (other.gameObject.CompareTag(tag) && !collidedWith)
            {
                collidedWith = true;
                objCollided = other.gameObject;
                CollisionEnter.Invoke();
            }
        }
    }

    private void OnCollisionStay(Collision other)
    {
        foreach (var tag in tagsToCompare)
        {
            if(other.gameObject.CompareTag(tag) && other.gameObject == objCollided)
                CollisionStay.Invoke();
        }
    }

    private void OnCollisionExit(Collision other)
    {
        foreach (var tag in tagsToCompare)
        {
            if (other.gameObject.CompareTag(tag) && objCollided == other.gameObject)
            {
                collidedWith = false;
                CollisionExit.Invoke();
            }
        }
    }
}
