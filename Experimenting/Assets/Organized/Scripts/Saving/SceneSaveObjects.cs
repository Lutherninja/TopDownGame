using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName =  "Save/Scene")]
public class SceneSaveObjects : Saving_Object_Base
{
    //will automatically populate itself with the SceneSaveManager
    public Vector3[] destinations;
    public bool[] active;
    public string[] objnames;
    //[HideInInspector] public int numOfObjects;
    public override void Set(ScriptableObject obj)
    {
        SceneSaveObjects sceneSave = obj as SceneSaveObjects;
        if (sceneSave == null)
            return;
        destinations = new Vector3[sceneSave.destinations.Length];
        active = new bool[sceneSave.active.Length];
        objnames = new string[sceneSave.objnames.Length];
        for(int i = 0; i < sceneSave.destinations.Length; i++)
        {
            destinations[i] = sceneSave.destinations[i];
            active[i] = sceneSave.active[i];
            objnames[i] = sceneSave.objnames[i];
        }
    }
}
