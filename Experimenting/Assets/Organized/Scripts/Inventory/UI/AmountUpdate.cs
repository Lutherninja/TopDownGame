using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class AmountUpdate : MonoBehaviour
{
    private TextMeshProUGUI numText;
    public IntData amount;

    private void Start()
    {
        numText = GetComponent<TextMeshProUGUI>();
    }

    private void Update()
    {
        numText.text = amount.value.ToString();
    }
}
