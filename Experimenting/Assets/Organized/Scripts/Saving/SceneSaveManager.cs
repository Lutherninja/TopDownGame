using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
//makes sure that there is at least one object to save in the scene
[RequireComponent(typeof(ObjectSave))]
public class SceneSaveManager : MonoBehaviour
{
    //DO NOT DESTROY ANY OF THE GAMEOBJECTS FOR THIS SCRIPT
        //It probably wont work correctly
        //Just set objects inactive instead
    public SceneSaveObjects objs;
    private ObjectSave[] _objs;
    private GameObject[] _objects;

    private void Start()
    {
        _objs = FindObjectsOfType<ObjectSave>();
        _objects = new GameObject[_objs.Length];
        if (objs.objnames == null)
        {
            Debug.Log("Null");
            Initialize();
        }
        else if (objs.objnames.Length == 0)
        {
            Debug.Log("Empty");
            Initialize();
        }
        else
        {
            Load();
        }
        
    }

    public void Initialize()
    {
        Debug.Log("Initialize_Scene");
        objs.active = new bool[_objs.Length];
        objs.destinations = new Vector3[_objs.Length];
        objs.objnames = new string[_objs.Length];
        for(int i = 0; i < _objs.Length; i++)
        {
            //Debug.Log(_objs[i].gameObject.name + " " + i);
            objs.objnames[i] = _objs[i].gameObject.name;
            _objects[i] = _objs[i].gameObject;
        }
        Save();
    }

    public void Save()
    {
        Debug.Log("Save_Scene");
        //Debug.Log(objs.objnames.Length);
        for (int i = 0; i < objs.objnames.Length; i++)
        {
            _objects[i] = GameObject.Find(objs.objnames[i]);
            if (_objects[i] == null)
            {
                //Debug.Log("null");
                objs.active[i] = false;
            }
            else
            {
                //Debug.Log(_objects[i].transform.position);
                objs.destinations[i] = _objects[i].transform.position;
                //Debug.Log(_objects[i].activeSelf);
                objs.active[i] = _objects[i].activeSelf;
            }
        }
    }


    public void Load()
    {
        Debug.Log("Load_Scene");
        //Debug.Log(objs.objnames.Length);
        for (int i = 0; i < objs.objnames.Length; i++)
        {
            _objects[i] = GameObject.Find(objs.objnames[i]);
            if (_objects[i] != null)
            {
                _objects[i].transform.position = objs.destinations[i];
                _objects[i].SetActive(objs.active[i]);
            }
        }
    }
}
