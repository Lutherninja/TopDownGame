using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine.UIElements;
using UnityEngine.XR;
using Image = UnityEngine.UI.Image;

public class Inventory_Manager : MonoBehaviour
{
    public GameObject ItemsInventory, MapInventory, SystemInventory;
    public BoolData inClothingInventory;
    private bool itemInventory, mapInventory, systemInventory;
    private int currentInventory;
    
    [Header("Item Inventory")]
    public List<Item_Base> allItems;
    public Inventory_List currentItems;
    public Equipped_Items equippedItems;
    public List<GameObject> allImages, SlotText;
    public GameObject HighlightImage, SelectedImage;
    public TextMeshProUGUI ItemName, ItemDescription;
    private List<List<Item_Base>> organizedItems;
    private List<Item_Base> rowItems;
    private List<GameObject> rowImages;
    private List<List<GameObject>> organizedImages;
    private int x, y, selectedX, selectedY;
    private bool isOpen, itemSelected;
    private int indexX, indexY;

    [Header("Map Inventory")] 
    public List<GameObject> VillageLocations;
    public GameObject MapHighlightObject;
    public List<GameObject> VillageImages;
    private int mapCurrentIndex;
    
    
    [Header("System Inventory")]
    public List<GameObject> SystemSelections;
    public List<UnityEvent> SystemEvents;
    private int currIndex;


    public void QuitToMenu()
    {
        Time.timeScale = 1;
        SceneManager.LoadScene("Menu");
    }
    
    private void Start()
    {
        CloseInventory();
        isOpen = false;
        ItemInventoryInitialize();
        MapInventoryInitialize();
        SystemInventoryInitialize();
    }

    private void ItemInventoryInitialize()
    {
        ItemsInventory.SetActive(false);
        itemSelected = false;
        organizedItems = new List<List<Item_Base>>();
        organizedImages = new List<List<GameObject>>();
        rowImages = new List<GameObject>();
        rowItems = new List<Item_Base>();
        for (int i = 0; i < 4; i++)
        {
            rowImages.Add(allImages[i]);
            if (equippedItems.items[i] == null)
            {
                rowItems.Add(null);
            }
            else
            {
                rowItems.Add(equippedItems.items[i]);
            }
        }

        foreach (var l in rowItems)
        {
            Debug.Log(l);
        }
        for (int i = 4; i < 7; i++)
        {
            rowImages.Add(allImages[i]);
            rowItems.Add(allItems[i]);
        }
        organizedImages.Add(rowImages);
        rowImages = new List<GameObject>();
        organizedItems.Add(rowItems);
        rowItems = new List<Item_Base>();
        for (int i = 7; i < 18; i++)
        {
            rowImages.Add(allImages[i]);
            rowItems.Add(allItems[i]);
        }
        organizedImages.Add(rowImages);
        rowImages = new List<GameObject>();
        organizedItems.Add(rowItems);
        rowItems = new List<Item_Base>();
        for (int i = 18; i < 26; i++)
        {
            rowImages.Add(allImages[i]);
            rowItems.Add(allItems[i]);
        }
        organizedImages.Add(rowImages);
        rowImages = new List<GameObject>();
        organizedItems.Add(rowItems);
        rowItems = new List<Item_Base>();
        for (int i = 26; i < 34; i++)
        {
            rowImages.Add(allImages[i]);
            rowItems.Add(allItems[i]);
        }
        organizedImages.Add(rowImages);
        rowImages = new List<GameObject>();
        organizedItems.Add(rowItems);
        rowItems = new List<Item_Base>();
        for (int i = 34; i < 42; i++)
        {
            rowImages.Add(allImages[i]);
            rowItems.Add(allItems[i]);
        }
        organizedImages.Add(rowImages);
        rowImages = new List<GameObject>();
        organizedItems.Add(rowItems);
        rowItems = new List<Item_Base>();
    }

    private void MapInventoryInitialize()
    {
        foreach (var vill in VillageImages)
        {
            vill.SetActive(false);
        }
        MapInventory.SetActive(false);
    }

    private void SystemInventoryInitialize()
    {
        SystemInventory.SetActive(false);
    }

    private void Update()
    {
        if (isOpen)
        {
            if (itemInventory)
            {
                if (Input.GetButtonDown("Horizontal"))
                {
                    //Right
                    if (Input.GetAxisRaw("Horizontal") > 0)
                    {
                        y++;
                        if (y >= organizedImages[x].Count)
                        {
                            y = 0;
                        }
                    }
                    //Left
                    else
                    {
                        y--;
                        if (y < 0)
                        {
                            y = organizedImages[x].Count - 1;
                        }
                    }
                }
                else if (Input.GetButtonDown("Vertical"))
                {
                    //Up
                    if (Input.GetAxisRaw("Vertical") > 0)
                    {
                        if (x == 0)
                        {
                            if (y >= 0 && y <= 3)
                            {
                                x = organizedImages.Count - 1;
                                y += 2;
                            }
                            else
                            {
                                x = 1;
                                y += 4;
                            }
                        }
                        else if (x == 1)
                        {
                            x--;
                            if (y >= 2 && y <= 5)
                            {
                                y -= 2;
                            }
                            else if (y >= 8 && y <= 10)
                            {
                                y -= 4;
                            }
                            else
                            {
                                x = organizedImages.Count - 1;
                            }
                        }
                        else
                        {
                            x--;
                        }
                    }
                    //Down
                    else
                    {
                        if (x == 0)
                        {
                            x++;
                            if (y >= 0 && y <= 3)
                            {
                                y += 2;
                            }
                            else
                            {
                                y += 4;
                            }
                        }
                        else if (x == 1)
                        {
                            if (x >= 0 && x <= 7)
                            {
                                x++;
                            }
                            else
                            {
                                x = 0;
                                y -= 2;
                            }
                        }
                        else if (x >= 2 && x <= organizedImages.Count - 2)
                        {
                            x++;
                        }
                        else
                        {
                            if (y >= 2 && y <= 5)
                            {
                                x = 0;
                                y -= 2;
                            }
                            else
                            {
                                x = 1;
                            }
                        }
                    }
                }
                else if (Input.GetButtonDown("Item"))
                {
                    //no item selected
                    if (!itemSelected)
                    {
                        //if nonequippable
                        if ((x == 0 && y >= 4 && y <= 6) || (x == 1 && y >= 8 && y <= 10))
                        {
                            //Don't select
                            Debug.Log("Non Equippable");
                        }
                        //if item is there or equippable slot
                        else if (organizedImages[x][y].activeSelf || (x == 0 && y >= 0 && y <= 3))
                        {
                            Debug.Log("Select");
                            SelectedImage.SetActive(true);
                            SelectedImage.transform.position = organizedImages[x][y].transform.position;
                            selectedX = x;
                            selectedY = y;
                            itemSelected = true;
                        }
                    }
                    //item already selected
                    else
                    {
                        if (selectedX == x && selectedY == y)
                        {
                            UnSelect();
                        }
                        //if the previously selected item was an equipped
                        else if (selectedX == 0 && selectedY >= 0 && selectedY <= 3)
                        {

                            //Equip
                            if (x == 0 && y >= 0 && y <= 3)
                            {
                                SwapEquipEquip(selectedX, selectedY, x, y);
                            }
                            //unequippable
                            else if ((x == 0 && y >= 4 && y <= 6) || (x == 1 && y >= 8 && y <= 10))
                            {
                                //do nothing
                            }
                            //empty
                            else if (!organizedImages[x][y].activeSelf)
                            {
                                RemoveFromEquip(selectedX, selectedY);
                            }
                            //Inventory
                            else
                            {
                                SwapInventToEquip(selectedX, selectedY, x, y);
                            }


                        }
                        //previously selected item was inventory
                        else
                        {
                            //Equip
                            if (x == 0 && y >= 0 && y <= 3)
                            {
                                SwapInventToEquip(x, y, selectedX, selectedY);
                            }
                            else
                            {
                                //do nothing
                            }
                        }
                    }

                }
                HighlightImage.transform.position = organizedImages[x][y].transform.position;
                if (organizedImages[x][y].activeSelf && !(x==0 && y>=0 && y <= 3))
                {
                    ItemDescription.text = organizedItems[x][y].ItemDescription;
                    ItemName.text = organizedItems[x][y].ItemName;
                }
                else if (x == 0 && y >= 0 && y <= 3)
                {
                    if (equippedItems.items[y] != null)
                    {
                        ItemDescription.text = equippedItems.items[y].ItemDescription;
                        ItemName.text = equippedItems.items[y].ItemName;
                    }
                    else
                    {
                        ItemDescription.text = "";
                        ItemName.text = "";
                    }
                }
                else
                {
                    ItemDescription.text = "";
                    ItemName.text = "";
                }
            }
            else if (mapInventory)
            {
                if (Input.GetButtonDown("Horizontal"))
                {
                    if (Input.GetAxisRaw("Horizontal") > 0)
                    {
                        switch (mapCurrentIndex)
                        {
                            case 0:
                                MapSet(mapCurrentIndex, 6);
                                break;
                            case 1:
                                MapSet(mapCurrentIndex, 0);
                                break;
                            case 2:
                                MapSet(mapCurrentIndex, 1);
                                break;
                            case 3:
                                MapSet(mapCurrentIndex, 4);
                                break;
                            case 4:
                                MapSet(mapCurrentIndex, 3);
                                break;
                            case 5:
                                MapSet(mapCurrentIndex, 6);
                                break;
                            case 6:
                                MapSet(mapCurrentIndex, 0);
                                break;
                            default:
                                break;
                        }
                    }
                    else
                    {
                        switch (mapCurrentIndex)
                        {
                            case 0:
                                MapSet(mapCurrentIndex, 1);
                                break;
                            case 1:
                                MapSet(mapCurrentIndex, 2);
                                break;
                            case 2:
                                MapSet(mapCurrentIndex, 1);
                                break;
                            case 3:
                                MapSet(mapCurrentIndex, 4);
                                break;
                            case 4:
                                MapSet(mapCurrentIndex, 3);
                                break;
                            case 5:
                                MapSet(mapCurrentIndex, 6);
                                break;
                            case 6:
                                MapSet(mapCurrentIndex, 5);
                                break;
                            default:
                                break;
                        }
                    }
                }
                else if (Input.GetButtonDown("Vertical"))
                {
                    if (Input.GetAxisRaw("Vertical") > 0)
                    {
                        switch (mapCurrentIndex)
                        {
                            case 0:
                                MapSet(mapCurrentIndex, 3);
                                break;
                            case 1:
                                MapSet(mapCurrentIndex, 0);
                                break;
                            case 2:
                                MapSet(mapCurrentIndex, 4);
                                break;
                            case 3:
                                MapSet(mapCurrentIndex, 6);
                                break;
                            case 4:
                                MapSet(mapCurrentIndex, 5);
                                break;
                            case 5:
                                MapSet(mapCurrentIndex, 2);
                                break;
                            case 6:
                                MapSet(mapCurrentIndex, 1);
                                break;
                            default:
                                break;
                        }
                    }
                    else
                    {
                        switch (mapCurrentIndex)
                        {
                            case 0:
                                MapSet(mapCurrentIndex, 1);
                                break;
                            case 1:
                                MapSet(mapCurrentIndex, 6);
                                break;
                            case 2:
                                MapSet(mapCurrentIndex, 5);
                                break;
                            case 3:
                                MapSet(mapCurrentIndex, 2);
                                break;
                            case 4:
                                MapSet(mapCurrentIndex, 2);
                                break;
                            case 5:
                                MapSet(mapCurrentIndex, 4);
                                break;
                            case 6:
                                MapSet(mapCurrentIndex, 3);
                                break;
                            default:
                                break;
                        }
                    }
                }
            }
            else if (systemInventory)
            {
                if (Input.GetButtonDown("Vertical"))
                {
                    SystemSelections[currIndex].SetActive(false);
                    if (Input.GetAxisRaw("Vertical") > 0)
                    {
                        currIndex++;
                        if (currIndex >= SystemSelections.Count)
                        {
                            currIndex = 0;
                        }
                    }
                    else
                    {
                        currIndex--;
                        if (currIndex < 0)
                        {
                            currIndex = SystemSelections.Count - 1;
                        }
                    }
                    SystemSelections[currIndex].SetActive(true);
                }
                else if (Input.GetButtonDown("Item"))
                {
                    SystemEvents[currIndex].Invoke();
                }
            }

            if (Input.GetButtonDown("Swap"))
            {
                if (Input.GetAxisRaw("Swap") > 0)
                {
                    switch (currentInventory)
                    {
                        case 0:
                            CloseItemInventory();
                            OpenMapInventory();
                            currentInventory = 1;
                            break;
                        case 1:
                            CloseMapInventory();
                            OpenSystemInventory();
                            currentInventory = 2;
                            break;
                        case 2:
                            CloseSystemInventory();
                            OpenItemInventory();
                            currentInventory = 0;
                            break;
                        default:
                            break;
                    }
                }
                else if(Input.GetAxisRaw("Swap") < 0)
                {
                    switch (currentInventory)
                    {
                        case 0:
                            CloseItemInventory();
                            OpenSystemInventory();
                            currentInventory = 2;
                            break;
                        case 1:
                            CloseMapInventory();
                            OpenItemInventory();
                            currentInventory = 0;
                            break;
                        case 2:
                            CloseSystemInventory();
                            OpenMapInventory();
                            currentInventory = 1;
                            break;
                        default:
                            break;
                    }
                }
            }
        }

        if (Input.GetButtonDown("Pause") && !inClothingInventory.value)
        {
            if (isOpen)
            {
                CloseInventory();
            }
            else
            {
                OpenInventory();
            }
        }
    }

    private void SwapInventToEquip(int equipx, int equipy, int selectedx, int selectedy)
    {
        Debug.Log("Inventory to Equip");
        if (equippedItems.items[equipy] != null)
        {
            RemoveFromEquip(equipx,equipy);
        }
        equippedItems.items[equipy] = organizedItems[selectedx][selectedy] as Usable_Item_Base;
        organizedImages[selectedx][selectedy].SetActive(false);
        SetSprites();
        UnSelect();
    }

    private void SwapEquipEquip(int x1, int y1, int x2, int y2)
    {
        Debug.Log("Equip to Equip");
        Usable_Item_Base temp = equippedItems.items[y1];
        equippedItems.items[y1] = equippedItems.items[y2];
        equippedItems.items[y2] = temp;
        SetSprites();
        UnSelect();
    }

    private void RemoveFromEquip(int equipx, int equipy)
    {
        Debug.Log("Remove Equip");
        string itemName = equippedItems.items[equipy].name;
        FindObject(itemName);
        organizedImages[indexX][indexY].SetActive(true);
        equippedItems.items[equipy] = null;
        SetSprites();
        UnSelect();
    }

    private void FindObject(string name)
    {
        Debug.Log("Find " + name);
        for (int i = 0; i < organizedItems.Count; i++)
        {
            for (int j = 0; j < organizedItems[i].Count; j++)
            {
                if (organizedItems[i][j] != null && name == organizedItems[i][j].name)
                {
                    indexX = i;
                    indexY = j;
                    return;
                }
            }
        }

        indexX = 0;
        indexY = 0;
    }

    private void UnSelect()
    {
        Debug.Log("Deselect");
        SelectedImage.SetActive(false);
        itemSelected = false;
    }

    private void OpenInventory()
    {
        OpenItemInventory();
    }

    private void SetSprites()
    {
        for (int i = 0; i < 4; i++)
        {
            SlotText[i].SetActive(false);
            if (equippedItems.items[i] != null)
            {
                organizedImages[0][i].GetComponent<Image>().sprite = equippedItems.items[i].sprite;
                if (equippedItems.items[i] is Usable_Amount_Item)
                {
                    SlotText[i].SetActive(true);
                    Usable_Amount_Item temp = equippedItems.items[i] as Usable_Amount_Item;
                    SlotText[i].GetComponent<AmountUpdate>().amount = temp.amount;
                }
                organizedImages[0][i].GetComponent<Image>().color = Color.white; 
            }
            else
            { 
                organizedImages[0][i].GetComponent<Image>().sprite = null; 
                organizedImages[0][i].GetComponent<Image>().color = Color.clear; 
            }
        }
        for (int j = 4; j < organizedItems[0].Count; j++)
        {
            organizedImages[0][j].SetActive(false);
            if (currentItems.items.Contains(organizedItems[0][j]))
            {
                organizedImages[0][j].SetActive(true);
            }
        }
        for (int i = 1; i < organizedItems.Count; i++)
        {
            for (int j = 0; j < organizedItems[i].Count; j++)
            {
                organizedImages[i][j].SetActive(false);
                if (currentItems.items.Contains(organizedItems[i][j]))
                {
                    organizedImages[i][j].SetActive(true);
                    if (equippedItems.items.Contains(organizedItems[i][j] as Usable_Item_Base))
                    {
                        organizedImages[i][j].SetActive(false);
                    }
                }
            }
        } 
    }

    private void MapSet(int previousIndex, int newIndex)
    {
        VillageImages[previousIndex].SetActive(false);
        MapHighlightObject.transform.position = VillageLocations[newIndex].transform.position;
        VillageImages[newIndex].SetActive(true);
        mapCurrentIndex = newIndex;
    }
    
    private void OpenItemInventory()
    {
        SetSprites();
        itemSelected = false;
        SelectedImage.SetActive(false);
        HighlightImage.SetActive(true);
        HighlightImage.transform.position = organizedImages[0][0].transform.position;
        x = 0;
        y = 0;
        itemSelected = false;
        ItemsInventory.SetActive(true);
        Time.timeScale = 0;
        currentInventory = 0;
        isOpen = true;
        itemInventory = true;
    }

    private void OpenMapInventory()
    {
        MapHighlightObject.SetActive(true);
        MapHighlightObject.transform.position = VillageLocations[0].transform.position;
        VillageImages[0].SetActive(true);
        MapInventory.SetActive(true);
        mapCurrentIndex = 0;
        mapInventory = true;
        
    }
    
    private void OpenSystemInventory()
    {
        SystemInventory.SetActive(true);
        currIndex = 0;
        foreach (var sele in SystemSelections)
        {
            sele.SetActive(false);
        }
        SystemSelections[0].SetActive(true);
        
        systemInventory = true;
        
    }

    private void CloseInventory()
    {
        CloseItemInventory();
        CloseMapInventory();
        CloseSystemInventory();
        isOpen = false;
        Time.timeScale = 1;
    }

    private void CloseItemInventory()
    {
        ItemsInventory.SetActive(false);
        SelectedImage.SetActive(false);
        HighlightImage.SetActive(false);
        itemInventory = false;
    }

    private void CloseMapInventory()
    {
        MapInventory.SetActive(false);
        mapInventory = false;
    }

    private void CloseSystemInventory()
    {
        SystemInventory.SetActive(false);
        systemInventory = false;
    }
    
    
}
