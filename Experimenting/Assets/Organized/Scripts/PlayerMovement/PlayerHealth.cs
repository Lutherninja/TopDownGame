using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class PlayerHealth : MonoBehaviour
{
    public IntData health;
    public IntData numOfHearts;
    public List<Image> hearts;
    public Sprite fullHeart;
    public Sprite emptyHeart;

    public void SetVals(IntData health, IntData numOfHearts, List<Image> hearts, Sprite fullHeart, Sprite emptyHeart)
    {
        this.health = health;
        this.numOfHearts = numOfHearts;
        this.hearts = hearts;
        this.fullHeart = fullHeart;
        this.emptyHeart = emptyHeart;
    }
    

    void FixedUpdate()
    {
        if(health.value > numOfHearts.value)
        {
            health.value = numOfHearts.value;
        }

        for (int i = 0; i < hearts.Count; i++)
        {
            if (i < health.value)
            {
                hearts[i].sprite = fullHeart;
            }
            else
            {
                hearts[i].sprite = emptyHeart;
            }
            if (i < numOfHearts.value)
            {
                hearts[i].enabled = true;
            }
            else
            {
                hearts[i].enabled = false;
            }
        }
        if(health.value <= 0)
        {
            gameObject.SetActive(false); //This is what happens if the player dies
        }
    }

}
