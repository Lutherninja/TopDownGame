using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class Choice_Selection : MonoBehaviour
{
    /*public GameObject ChoiceSelectionBox;
    public IntData ChoiceNum, NumChoices;
    public List<Text> ChoiceTexts;
    public List<StringData> Choices;
    public BoolData InChoiceSelection;
    public KeyCodeData interact;
    public UnityEvent OnChoiceSelection, LeaveChoiceSelection;

    public void Call()
    {
        Initialize();
        StartCoroutine(Choose());
    }

    private void Initialize()
    {
        ChoiceNum.value = 0;
        ChoiceSelectionBox.SetActive(true);
        foreach (var text in ChoiceTexts)
        {
            text.gameObject.SetActive(false);
        }
        for (int i = 0; i < Choices.Count; i++)
        {
            ChoiceTexts[i].gameObject.SetActive(true);
            ChoiceTexts[i].text = Choices[i].value;
            ChoiceTexts[i].color = Color.black;
        }
    }

    public IEnumerator Choose()
    {
        yield return new WaitForSeconds(.1f);
        while (InChoiceSelection.value)
        {
            if (Input.GetAxisRaw("Horizontal") < 0 && NumChoices.value > 0)
            {
                //choice 1
                if (ChoiceNum.value != 0)
                {
                    ChoiceTexts[ChoiceNum.value-1].color = Color.black;
                }
                ChoiceNum.value = 1;
                ChoiceTexts[0].color = Color.blue;
            }
            else if (Input.GetAxisRaw("Horizontal") > 0 && NumChoices.value > 2)
            {
                //choice 3
                if (ChoiceNum.value != 0)
                {
                    ChoiceTexts[ChoiceNum.value-1].color = Color.black;
                }
                ChoiceNum.value = 3;
                ChoiceTexts[2].color = Color.blue;
            }
            else if (Input.GetAxisRaw("Vertical") > 0  && NumChoices.value > 1)
            {
                //choice 2
                if (ChoiceNum.value != 0)
                {
                    ChoiceTexts[ChoiceNum.value-1].color = Color.black;
                }
                ChoiceNum.value = 2;
                ChoiceTexts[1].color = Color.blue;
            }
            else if (Input.GetAxisRaw("Vertical") < 0 && NumChoices.value > 3)
            {
                //choice 4
                if (ChoiceNum.value != 0)
                {
                    ChoiceTexts[ChoiceNum.value-1].color = Color.black;
                }
                ChoiceNum.value = 4;
                ChoiceTexts[3].color = Color.blue;
            }
            else if (interact.KeyDown() && ChoiceNum.value != 0)
            {
                InChoiceSelection.value = false;
                if(ChoiceNum.value < NumChoices.value)
                    OnChoiceSelection.Invoke();
                else
                    LeaveChoiceSelection.Invoke();
                Close();
            }
            yield return new WaitForFixedUpdate();
        }
        Close();
    }

    public void Close()
    {
        InChoiceSelection.value = false;
        ChoiceSelectionBox.SetActive(false);
    }*/
}
