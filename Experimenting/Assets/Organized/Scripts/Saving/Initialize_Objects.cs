using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class Initialize_Objects : MonoBehaviour
{
    private int numOfSaves = 3;
    public Scriptable_Object_Saver saveData;
    private string origpath, newpath, folderpath, endpath;
    private string[] pathsections;
    private List<Scriptable_Object_Saver> copiedData;

    private void CreateCopies()
    {
        copiedData = new List<Scriptable_Object_Saver>();
        origpath = AssetDatabase.GetAssetPath(saveData);
        folderpath = "";
        pathsections = origpath.Split('/');
        for (int i = 0; i < pathsections.Length - 1; i++)
        {
            folderpath += pathsections[i] + "/";
        }

        pathsections = origpath.Split('.');
        endpath = pathsections[1];

        for (int i = 0; i < numOfSaves; i++)
        {
            newpath = folderpath + saveData.name + "_0" + (i+1)  + "." + endpath;
            AssetDatabase.CopyAsset(origpath, newpath);
            copiedData.Add(AssetDatabase.LoadAssetAtPath<Scriptable_Object_Saver>(newpath));
        }
    }

    private void RepopulateCopies()
    {
        AssetDatabase.CreateFolder("Assets", "Save_Objects");   
        for (int i = 0; i < copiedData.Count; i++)
        {
            origpath = AssetDatabase.GetAssetPath(saveData);
            folderpath = "Assets/Save_Objects";
            copiedData[i].Data = new List<Saving_Object_Base>();
            newpath = "Save_0" + (i + 1);
            AssetDatabase.CreateFolder(folderpath, newpath);
            for (int j = 0; j < saveData.Data.Count; j++)
            {
                newpath = folderpath + "/" + "Save_0" + (i + 1) + "/";
                origpath = AssetDatabase.GetAssetPath(saveData.Data[j]);
                pathsections = origpath.Split('.');
                endpath = pathsections[1];
                newpath += saveData.Data[j].name + "_0" + (i+1) + "." + endpath;
                Debug.Log(newpath);
                AssetDatabase.CopyAsset(origpath, newpath);
                copiedData[i].Data.Add(AssetDatabase.LoadAssetAtPath<Saving_Object_Base>(newpath));
            }
            
        }
    }

    private void DeleteCopies()
    {
        copiedData = new List<Scriptable_Object_Saver>();
        origpath = AssetDatabase.GetAssetPath(saveData);
        folderpath = "";
        pathsections = origpath.Split('/');
        for (int i = 0; i < pathsections.Length - 1; i++)
        {
            folderpath += pathsections[i] + "/";
        }
        pathsections = origpath.Split('.');
        endpath = pathsections[1];
        
        for (int i = 0; i < numOfSaves; i++)
        {
            newpath = folderpath + saveData.name + "_0" + (i+1) + "." + endpath;
            AssetDatabase.DeleteAsset(newpath);
        }
        //Delete Files 
        AssetDatabase.DeleteAsset("Assets/Save_Objects");
    }

    public void Initialize()
    {
        DeleteCopies();
        CreateCopies();
        RepopulateCopies();
    }
    


}
