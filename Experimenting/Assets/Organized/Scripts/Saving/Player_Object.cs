using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Player/Player")]
public class Player_Object : Saving_Object_Base
{
    public Vector3 loadPos;
    public string currentSceneName;

    public void SetLoadPos(Transform transform)
    {
        loadPos = transform.position;
    }

    public void SetCurrentScene(string sceneName)
    {
        currentSceneName = sceneName;
    }

    public override void Set(ScriptableObject obj)
    {
        Player_Object player = obj as Player_Object;
        if (player == null)
            return;
        loadPos = player.loadPos;
        currentSceneName = player.currentSceneName;
    }
}
