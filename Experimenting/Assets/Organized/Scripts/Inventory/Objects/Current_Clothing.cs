using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Clothing/ClothingList")]
public class Current_Clothing : Saving_Object_Base
{
    public List<Clothing_Base> collectedClothing;
    public Clothing_Base currentHat, currentShirt, currentPants;
    
    public override void Set(ScriptableObject obj)
    {
        Current_Clothing cc = obj as Current_Clothing;
        if (cc == null)
        {
            return;
        }
        collectedClothing = new List<Clothing_Base>();
        foreach (var clothing in collectedClothing)
        {
            collectedClothing.Add(clothing);
        }

        currentHat = cc.currentHat;
        currentShirt = cc.currentShirt;
        currentPants = cc.currentPants;
    }
}
