using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;

public class choice_dialogue : MonoBehaviour
{
    public GameObject ChoiceSelectionBox;
    public int choicenum;
    public List<Text> ChoiceTexts;
    public NPCObject Choices;
    public KeyCodeData interact, switchChoice;
    private bool inChoiceSelection;
    public Color initialColor, highlightedColor;
    public UnityEvent OnChoice;
    public BoolData finishEvent, ConvStart;


    private void Start()
    {
        ChoiceSelectionBox.SetActive(false);
    }

    public void Call()
    {
        Initialize();
        inChoiceSelection = true;
        StartCoroutine(Choose());
    }

    private void Initialize()
    {
        choicenum = 1;
        ChoiceSelectionBox.SetActive(true);
        ChoiceTexts[0].text = Choices.choices.lines[0];
        ChoiceTexts[1].text = Choices.choices.lines[1];
        ChoiceTexts[0].color = highlightedColor;
        ChoiceTexts[1].color = initialColor;
    }

    public IEnumerator Choose()
    {
        yield return new WaitForSeconds(.1f);
        while (inChoiceSelection)
        {
            if (switchChoice.KeyDown())
            {
                //choice 1
                Debug.Log("Switch");
                if (choicenum != 1)
                {
                    ChoiceTexts[1].color = initialColor;
                    choicenum = 1;
                    ChoiceTexts[0].color = highlightedColor;
                }
                //choice 2
                else
                {
                    ChoiceTexts[0].color = initialColor;
                    choicenum = 2;
                    ChoiceTexts[1].color = highlightedColor;
                }
            }
            else if (interact.KeyDown())
            {
                inChoiceSelection = false;
                StartCoroutine(Choosen());
            }

            yield return new WaitUntil(()=>Input.anyKey);
        }
        Close();
    }

    private IEnumerator Choosen()
    {
        Choices.choices.events[choicenum-1].Invoke();
        yield return new WaitWhile(()=>!finishEvent.value);
        Debug.Log("Continue");
        finishEvent.value = false;
        ConvStart.value = false;
        OnChoice.Invoke();
    }

    public void Close()
    {
        inChoiceSelection = false;
        ChoiceSelectionBox.SetActive(false);
    }
}
