using UnityEngine;

public class Door : SceneController
{
 public GameObject guiObject;
 public string levelToLoad;

 public Transform player;

 public GameObject
  PositionWhenBack; //Use an Empty GameObject for this that will indicate where the player will spawn back

 private SceneController sceneController;

 public override void Start()
 {
  base.Start();
//this is for the UI text that says something like "press F to open"
  guiObject.SetActive(false);

  sceneController =
   GameObject.FindGameObjectWithTag("GameController").GetComponent<SceneController>(); //This gets the scene manager

//This is to put the player back where he was
  if (prevScene == levelToLoad)
  {
   player.position = PositionWhenBack.transform.position;
  }
 }


 [System.Obsolete]
 void OnTriggerStay(Collider other)
 {
  if (other.gameObject.tag == "Player")
  {
   guiObject.SetActive(true);
   if (guiObject.activeInHierarchy == true && Input.GetButtonDown("Use"))
   {
    sceneController.LoadScene(levelToLoad); //This will load the scene
   }
  }

 }

 void OnTriggerExit()
 {
  guiObject.SetActive(false);
 }
}