using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Boss/Part Health")]
public class BossPartHealth : IntData
{
    public IntData FullHealth;

    public override void DecreaseAmount(int amount)
    {
        base.DecreaseAmount(amount);
        FullHealth.DecreaseAmount(amount);
    }
}
