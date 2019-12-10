using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;

public class Clothing_Inventory : MonoBehaviour
{
    public GameObject ClothingInventory;
    public Current_Clothing currClothing;
    public GameObject HighlightImage;
    public GameObject SelectionObj;
    public List<GameObject> clothingImages;
    public List<Clothing_Base> clothes;
    public BoolData inClothesSelection;
    public List<GameObject> PlayerClothingObjects;
    private int indexX, selectedX, objIndex;
    private bool selected;

    private void Start()
    {
        SetClothes();
        inClothesSelection.value = false;
        ClothingInventory.SetActive(false);
    }

    public void OpenClothingInventory()
    {
        Time.timeScale = 0;
        Initialize();
        inClothesSelection.value = true;
        ClothingInventory.SetActive(true);
    }

    public void Initialize()
    {
        SetSprites();
        SelectionObj.SetActive(true);
        SelectionObj.transform.position = clothingImages[0].transform.position;
        HighlightImage.SetActive(false);
        indexX = 0;
        selected = false;
    }

    private void Update()
    {
        if (inClothesSelection.value)
        {
            if (Input.GetButtonUp("Pause"))
                CloseInventory();

            else if (Input.GetButtonDown("Horizontal"))
            {
                if (Input.GetAxisRaw("Horizontal") > 0)
                    if (indexX <= 11)
                        if ((indexX + 1) % 4 == 0)
                            indexX -= 3;
                        else
                            indexX++;
                    else if (indexX == 14)
                        indexX -= 2;
                    else
                        indexX++;
                else 
                    if (indexX <= 11)
                        if (((indexX) % 4 == 0) || indexX == 0)
                            indexX += 3;
                        else
                            indexX--;
                    else 
                        if (indexX == 12)
                            indexX += 2;
                        else
                            indexX--;
            }
            else if (Input.GetButtonDown("Vertical"))
            {
                if (Input.GetAxisRaw("Vertical") < 0)
                    if (indexX >= 11)
                        if (indexX == 11)
                            indexX = 3;
                        else
                            indexX -= 12;
                    else
                        indexX += 4;
                else 
                    if (indexX <= 3)
                        if (indexX == 3)
                            indexX = 11;
                        else
                            indexX += 12;
                    else
                        indexX -= 4;
            }
            else if (Input.GetButtonDown("Item"))
                {
                    //no item selected
                    if (!selected)
                    {
                        if (clothingImages[indexX].activeSelf || indexX == 3 || indexX == 7|| indexX == 11)
                        {
                            Select();
                        }
                    }
                    //item already selected
                    else
                    {
                        if (selectedX == indexX)
                        {
                            UnSelect();
                        }
                        //if the previously selected item was an hat slot
                        else if (selectedX == 3)
                        {
                            //equipped clothes
                            if (indexX == 7 || indexX == 11)
                            {
                                Select();
                            }
                            //empty
                            else if (!clothingImages[indexX].activeSelf)
                            {
                                RemoveFromClothing(selectedX, "Hat");
                            }
                            //Inventory
                            else
                            {
                                if(clothes[indexX].TypeOfClothing == Clothing_Base.ClothingType.Hat)
                                    SwapInventToEquip(selectedX, indexX, "Hat");
                                else
                                    Debug.Log("Wrong type");
                            }
                        }
                        //if the previously selected item was shirt slot
                        else if (selectedX == 7)
                        {
                            //equipped clothes
                            if (indexX == 3 || indexX == 11)
                            {
                                Select();
                            }
                            //empty
                            else if (!clothingImages[indexX].activeSelf)
                            {
                                RemoveFromClothing(selectedX, "Shirt");
                            }
                            //Inventory
                            else
                            {
                                if(clothes[indexX].TypeOfClothing == Clothing_Base.ClothingType.Shirt)
                                    SwapInventToEquip(selectedX, indexX, "Shirt");
                                else
                                    Debug.Log("Wrong type");
                            }
                        }
                        //if the previously selected item was pants slot
                        else if (selectedX == 11)
                        {
                            //equipped clothes
                            if (indexX == 3 || indexX == 7)
                            {
                                Select();
                            }
                            //empty
                            else if (!clothingImages[indexX].activeSelf)
                            {
                                RemoveFromClothing(selectedX, "Pants");
                            }
                            //Inventory
                            else
                            {
                                if(clothes[indexX].TypeOfClothing == Clothing_Base.ClothingType.Pants)
                                    SwapInventToEquip(selectedX, indexX, "Pants");
                                else
                                    Debug.Log("Wrong type");
                            }
                        }
                        //previously selected item was inventory
                        else
                        {
                            //Equip
                            if (indexX == 3)
                            {
                                if(clothes[selectedX].TypeOfClothing == Clothing_Base.ClothingType.Hat)
                                    SwapInventToEquip(indexX, selectedX, "Hat");
                                else
                                    Debug.Log("Wrong Type");
                            }
                            else if (indexX == 7)
                            {
                                if(clothes[selectedX].TypeOfClothing == Clothing_Base.ClothingType.Shirt)
                                    SwapInventToEquip(indexX, selectedX, "Shirt");
                                else
                                    Debug.Log("Wrong Type");
                            }
                            else if (indexX == 11)
                            {
                                if(clothes[selectedX].TypeOfClothing == Clothing_Base.ClothingType.Pants)
                                    SwapInventToEquip(indexX, selectedX, "Pants");
                                else
                                    Debug.Log("Wrong Type");
                            }
                            else if(clothingImages[indexX].activeSelf)
                            {
                                Select();
                            }
                        }
                    }

                }

               
            SelectionObj.transform.position = clothingImages[indexX].transform.position;
        }
    }


    private void Select()
    {
        Debug.Log("Select");
        HighlightImage.SetActive(true);
        HighlightImage.transform.position = clothingImages[indexX].transform.position;
        selectedX = indexX;
        selected = true;
    }

    private void SetClothes()
    {
        foreach (var clothe in PlayerClothingObjects)
        {
            clothe.SetActive(false);
        }

        foreach (var clothe in PlayerClothingObjects)
        {
            if(currClothing.currentHat != null && clothe.name.Contains(currClothing.currentHat.name))
                clothe.SetActive(true);
            else if(currClothing.currentShirt != null &&clothe.name.Contains(currClothing.currentShirt.name))
                clothe.SetActive(true);
            else if(currClothing.currentPants != null &&clothe.name.Contains(currClothing.currentPants.name))
                clothe.SetActive(true);
        }
    }

    private void CloseInventory()
    {
        ClothingInventory.SetActive(false);
        SetClothes();
        Time.timeScale = 1;
        inClothesSelection.value = false;
    }

    public void SwapInventToEquip(int equipX, int inventoryX, string type)
    {
        Debug.Log("Inventory to Equip");
        switch (type)
        {
            case "Hat":
                if(currClothing.currentHat != null)
                    RemoveFromClothing(equipX, "Hat");
                currClothing.currentHat = clothes[inventoryX];
                break;
            case "Shirt":
                if(currClothing.currentHat != null)
                    RemoveFromClothing(equipX, "Shirt");
                currClothing.currentShirt = clothes[inventoryX];
                break;
            case "Pants":
                if(currClothing.currentHat != null)
                    RemoveFromClothing(equipX, "Pants");
                currClothing.currentPants = clothes[inventoryX];
                break;
            default:
                break;
        }
        SetSprites();
        UnSelect();
    }

    public void RemoveFromClothing(int equipx, string type)
    {
        FindObject(type);
        switch (type)
        {
            case "Hat":
                currClothing.currentHat = null;
                break;
            case "Shirt":
                currClothing.currentShirt = null;
                break;
            case "Pants":
                currClothing.currentPants = null;
                break;
            default:
                break;
        }
        SetSprites();
        UnSelect();
    }

    public void FindObject(string type)
    {
        switch (type)
        {
            case "Hat":
                objIndex = clothes.IndexOf(currClothing.currentHat);
                break;
            case "Shirt":
                objIndex = clothes.IndexOf(currClothing.currentShirt);
                break;
            case "Pants":
                objIndex = clothes.IndexOf(currClothing.currentPants);
                break;
            default:
                break;
        }

    }

    public void UnSelect()
    {
        Debug.Log("Deselect");
        HighlightImage.SetActive(false);
        selected = false;
    }
    
    private void SetSprites()
    {
        foreach (var image in clothingImages)
        {
            image.SetActive(false);
        }
        for (int i = 0; i < clothes.Count; i++)
        {
            if (currClothing.collectedClothing.Contains(clothes[i]))
            {
                if(clothes[i].TypeOfClothing == Clothing_Base.ClothingType.Hat)
                    if (currClothing.currentHat == clothes[i])
                        continue;
                if(clothes[i].TypeOfClothing == Clothing_Base.ClothingType.Shirt)
                    if (currClothing.currentShirt == clothes[i])
                        continue;
                if(clothes[i].TypeOfClothing == Clothing_Base.ClothingType.Pants)
                    if (currClothing.currentPants == clothes[i])
                        continue;
                clothingImages[i].SetActive(true);
            }
        }
    }
}
