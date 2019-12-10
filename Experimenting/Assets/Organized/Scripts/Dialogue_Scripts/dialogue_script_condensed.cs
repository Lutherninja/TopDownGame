using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;

public class dialogue_script_condensed : MonoBehaviour
{
    public Text Dialouge_Text, Character_Text;
    public GameObject Dialouge_Object;
    public KeyCode interact_key;
    public NPCObject NPC;
    private bool inRange;
    public BoolData ConvStart;
    private string _text_to_display;
    public UnityEvent OnInteract, OnFinish, OnChoiceSelection;
    private float textScrollSpeed;
    private string _choiceCharacter = "*";
    private string _actionCharacter = "^";
    public List<UnityEvent> dialogueActions;
    private int _actionIndex;
    private Weapon_Manager playerWeapon;
    private EightWayMovement playerMovement;
    
    private void Start()
    {
        inRange = false;
        ConvStart.value = false;
        Dialouge_Text.text = "";
        Character_Text.text = "";
        Dialouge_Object.SetActive(false);
    }
    
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            if (playerWeapon == null)
                playerWeapon = other.GetComponent<Weapon_Manager>();
            if (playerMovement == null)
                playerMovement = other.GetComponent<EightWayMovement>();
            playerWeapon.DisableWeapon();
            inRange = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            if (playerWeapon == null)
                playerWeapon = other.GetComponent<Weapon_Manager>();
            if (playerMovement == null)
                playerMovement = other.GetComponent<EightWayMovement>();
            playerWeapon.EnableWeapons();
            inRange = false;
        }
    }

    private void FixedUpdate()
    {
        if (inRange && !(ConvStart.value) && Input.GetKeyDown(interact_key))
        {
            OnInteract.Invoke();
        }
    }

    public void StartConv()
    {
        if (!ConvStart.value){
            ConvStart.value = true;
            Dialouge_Object.SetActive(true);
            playerMovement.CancelControls();
            StartCoroutine(ScrollText());
        }
    }
    
    public IEnumerator ScrollText()
    {
        Character_Text.text = NPC.dialogue.name;
        for (int i = 0; i < NPC.dialogue.lines.Count; i++)
        {
            _text_to_display = "";
            //Choice Selection
            if (NPC.dialogue.lines[i] == _choiceCharacter)
            {
                OnChoiceSelection.Invoke();
                Dialouge_Object.SetActive(false);
                yield break;
            }

            else if (NPC.dialogue.lines[i].Contains(_actionCharacter))
            {
                Debug.Log("Action: ");
                
                _actionIndex = int.Parse(NPC.dialogue.lines[i].Split('^')[1]);
                dialogueActions[_actionIndex].Invoke();
            }
            else
            {
                textScrollSpeed = .001f;
                for (int j = 0; j < NPC.dialogue.lines[i].Length; j++)
                {
                    _text_to_display += NPC.dialogue.lines[i][j];
                    Dialouge_Text.text = _text_to_display;
                    yield return new WaitForSeconds(textScrollSpeed);
                    if (Input.GetKeyDown(interact_key))
                    {
                        Dialouge_Text.text = NPC.dialogue.lines[i];
                        break;
                    }
                }

                yield return new WaitForSeconds(.01f);
                yield return new WaitUntil(() => Input.GetKeyDown(interact_key));
            }
        }
        
        Dialouge_Object.SetActive(false);
        playerMovement.ResumeControls();
        OnFinish.Invoke();
        ConvStart.value = false;
    }

    public void CloseDialogue()
    {
        playerMovement.ResumeControls();
        Dialouge_Object.SetActive(false);
        ConvStart.value = false;
    }


}
