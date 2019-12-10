using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices.ComTypes;
using UnityEngine;
[CreateAssetMenu(menuName = "Clothing/Clothing")]
public class Clothing_Base : Item_Base
{
    public enum ClothingType
    {
        Hat,
        Shirt,
        Pants
    };

    public ClothingType TypeOfClothing;


}
