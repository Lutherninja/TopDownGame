using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NormalProjectile : BaseProjectile
{
    private Vector3 direction;
    private bool fired;

    void Update()
    {
        if (fired)
        {
            transform.position += direction * (speed * Time.deltaTime);
        }
    }

    public override void fireProjectile(GameObject launcher, GameObject target, int damage)
    {
        if (launcher && target)
        {
            direction = (target.transform.position - launcher.transform.position).normalized;
            fired = true;
        }

        
    }
}
