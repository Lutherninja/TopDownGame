using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
[CreateAssetMenu(menuName = "Dialogue/choices")]
public class choice_lines : dialogue_lines
{

    public List<UnityEvent> events;

}
