using UnityEngine;
using System.Collections;
 
public class EnemyHealth : MonoBehaviour
{
  public int maxHealth = 2;
  public int curHealth = 2;

  void FixedUpdate()
  {
  AddjustCurrentHealth(0);
  }
 
 
  public void AddjustCurrentHealth(int adj)
  {
  curHealth += adj;
 
  if (curHealth <= 0)
  {
  curHealth = 0;
  gameObject.SetActive(false);
  //EnemyDies here 
  }

  if (curHealth > maxHealth)
  {
  curHealth = maxHealth;
  }
  if (maxHealth < 1)
    {
        maxHealth = 1;
    }
  }
}