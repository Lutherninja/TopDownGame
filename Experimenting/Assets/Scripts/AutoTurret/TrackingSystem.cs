using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrackingSystem : MonoBehaviour
{

    public float speed = 3.0f;
    public GameObject m_target;
    private Vector3 m_lastKnownPosition = Vector3.zero;
    private Quaternion m_LookAtRotation;

    
    
    
    // Update is called once per frame
    void Update()
    {
        if (m_lastKnownPosition != m_target.transform.position)
        {
            m_lastKnownPosition = m_target.transform.position;
            m_LookAtRotation = Quaternion.LookRotation(m_lastKnownPosition - transform.position);
        }

        if (transform.rotation != m_LookAtRotation)
        {
            transform.rotation = Quaternion.RotateTowards(transform.rotation, m_LookAtRotation, speed * Time.deltaTime);
        }
    }

    bool SetTarget(GameObject target)
        {
            if (target)
            {
                return false;
            }

            m_target = target;

            return true;
        }
    
}
