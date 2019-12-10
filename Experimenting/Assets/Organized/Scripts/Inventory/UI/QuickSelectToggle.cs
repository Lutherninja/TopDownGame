using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class QuickSelectToggle : MonoBehaviour
{
    public Equipped_Items equipped;
    public string InputType;
    private int numtimesthrough = 0, rightIndex, leftIndex;
    public Color corners, center;
    public Image left, current, right;
    public TextMeshProUGUI leftAmount, currentAmount, rightAmount;
    private bool hasitems;
    
    private void Start()
    {
        SetSprites();
    }

    private void FixedUpdate()
    {
        if (Input.GetButtonDown(InputType))
        {
            Debug.Log("Swap " + gameObject.name);
            if (Input.GetAxisRaw(InputType) > 0)
            {
                numtimesthrough = 0;
                equipped.CurrentEquip = GetRight(equipped.CurrentEquip);
            }
            else if ((Input.GetAxisRaw(InputType) < 0))
            {
                numtimesthrough = 0;
                equipped.CurrentEquip = GetLeft(equipped.CurrentEquip);
            }
        }
        SetSprites();
    }

    private void SetSprites()
    {
            numtimesthrough = 0;
            rightIndex = GetRight(equipped.CurrentEquip);
            numtimesthrough = 0;
            leftIndex = GetLeft(equipped.CurrentEquip);
            if (equipped.items[rightIndex] != null)
            {
                right.sprite = equipped.items[rightIndex].sprite;
                right.color = corners;
                if (equipped.items[rightIndex] is Usable_Amount_Item)
                {
                    rightAmount.gameObject.SetActive(true);
                    Usable_Amount_Item temp = equipped.items[rightIndex] as Usable_Amount_Item;
                    rightAmount.text = temp.amount.value.ToString();
                }
                else
                {
                    rightAmount.gameObject.SetActive(false);
                }
            }
            else
            {
                rightAmount.gameObject.SetActive(false);
                right.color = Color.clear;
            }

            if (equipped.items[leftIndex] != null)
            {
                left.sprite = equipped.items[leftIndex].sprite;
                left.color = corners;
                if (equipped.items[leftIndex] is Usable_Amount_Item)
                {
                    leftAmount.gameObject.SetActive(true);
                    Usable_Amount_Item temp = equipped.items[leftIndex] as Usable_Amount_Item;
                    leftAmount.text = temp.amount.value.ToString();
                }
                else
                {
                    leftAmount.gameObject.SetActive(false);
                }
            }
            else
            {
                left.color = Color.clear;
                leftAmount.gameObject.SetActive(false);
            }

            if (equipped.CurrentItem() != null)
            {
                current.sprite = equipped.CurrentItem().sprite;
                current.color = center;
                if (equipped.CurrentItem() is Usable_Amount_Item)
                {
                    currentAmount.gameObject.SetActive(true);
                    Usable_Amount_Item temp = equipped.CurrentItem() as Usable_Amount_Item;
                    currentAmount.text = temp.amount.value.ToString();
                }
                else
                {
                    currentAmount.gameObject.SetActive(false);
                }
            }
        else
        {
            currentAmount.gameObject.SetActive(false);
            current.color = Color.clear;
        }


    }    
    
    private int GetRight(int num)
    {
        
        num++;
        if (num > 3)
        {
            num = 0;
        }
        if (equipped.items[num] != null)
        {
            return num;
        }

        numtimesthrough++;
        if (numtimesthrough > 4)
        {
            return equipped.CurrentEquip;
        }

        return GetRight(num);

    }
    
    private int GetLeft(int num)
    {
        
        num--;
        if (num < 0)
        {
            num = 3;
        }
        if (equipped.items[num] != null)
        {
            return num;
        }

        numtimesthrough++;
        if (numtimesthrough > 4)
        {
            return equipped.CurrentEquip;
        }

        return GetLeft(num);

    }
    
}
