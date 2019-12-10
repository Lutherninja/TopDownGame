using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SaveScript : MonoBehaviour
{
    public Scriptable_Object_Saver original, current;
    public List<Scriptable_Object_Saver> saves;
    public IntData currentSave;

    private Saving_Object_Base objFrom, objTo;


    public void SetDataValues(Scriptable_Object_Saver From, Scriptable_Object_Saver To)
    {
        Debug.Log("Set Values");
        for (int i = 0; i < From.Data.Count; i++)
        {
            objFrom = AssetDatabase.LoadAssetAtPath<Saving_Object_Base>(AssetDatabase.GetAssetPath(From.Data[i]));
            objTo = AssetDatabase.LoadAssetAtPath<Saving_Object_Base>(AssetDatabase.GetAssetPath(To.Data[i]));
            objTo.Set(objFrom);
        }
    }
    
    public void Save()
    {
        Debug.Log("Save Game");
        SetDataValues(current, saves[currentSave.value]);
        for (int i = 0; i < saves[currentSave.value].Data.Count; i++)
        {
            if (saves[currentSave.value].Data[i] == null)
            {
                Debug.Log("Save: Null");
                return;
            }
            PlayerPrefs.SetString(saves[currentSave.value].Data[i].name,
                JsonUtility.ToJson(saves[currentSave.value].Data[i]));
        }
    }

    public void Load()
    {
        Debug.Log("Load Game");
        for (int i = 0; i < saves[currentSave.value].Data.Count; i++)
        {
            if (saves[currentSave.value].Data[i] == null)
            {
                Debug.Log("Load: Null ");
                return;
            }

            if (!string.IsNullOrEmpty(PlayerPrefs.GetString(saves[currentSave.value].Data[i].name)))
            {
                JsonUtility.FromJsonOverwrite(PlayerPrefs.GetString(saves[currentSave.value].Data[i].name),
                    saves[currentSave.value].Data[i]);
            }
        }
                SetDataValues(saves[currentSave.value], current);
    }
    
    public void Reset()
    {
        Debug.Log("Reset Game");
        SetDataValues(original, current);

    }
}

