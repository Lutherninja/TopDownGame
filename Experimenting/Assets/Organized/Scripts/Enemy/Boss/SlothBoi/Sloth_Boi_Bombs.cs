using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Boss/SlothBoi/BombPhase")]
public class SlothBoi_Bombs : Phase
{
    private GameObject player, mothBombObj;
    public string phaseName;
    private float inBetweenBombTime;
    private Vector3 bombstart;
    public GameObject mothBomb;
    private int numOfBombs;
    
    public override IEnumerator StartPhase(List<GameObject> objs)
    {
        inBetweenBombTime = 10;
        numOfBombs = 3;
        player = objs[0];
        currentPhase = false;
        finishStart = false;
        finishEnd = false;
        Debug.Log("Start " + phaseName);
        //handcolliders
        objs[7].SetActive(false);
        objs[8].SetActive(false);
        //Insert Start Stuff Here
        yield return new WaitForSeconds(1);
        finishStart = true;
    }
    
    public override IEnumerator UpdatePhase(List<GameObject> objs)
    {

        finishStart = false;
        finishEnd = false;
        currentPhase = true;
        Debug.Log("Update " + phaseName);
        while (currentPhase)
        {
            numOfBombs = Random.Range(numOfBombs-1, numOfBombs + 1);
            for (int i = 0; i < numOfBombs; i++)
            {
                bombstart = mothBomb.transform.position;
                bombstart.x = Random.Range(bombstart.x - 10, bombstart.x + 10);
                mothBombObj = Instantiate(mothBomb);
                mothBombObj.transform.position = bombstart;
                yield return new WaitForSeconds(.5f);
            }
            yield return new WaitForSeconds(inBetweenBombTime);
        }
        
    }
    
    public override IEnumerator StopPhase(List<GameObject> objs)
    {
        currentPhase = false;
        finishStart = false;
        finishEnd = false;
        Debug.Log("Stop " + phaseName);
        //Insert Stop Stuff Here
        yield return new WaitForSeconds(1);
        finishEnd = true;
    }
}
