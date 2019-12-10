using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Boss/SlothBoi/ArmBombPhase")]
public class SlothBoi_Arms_And_Bombs : Phase
{
    private GameObject player, r_hand, l_hand, current_hand, 
        r_playertransform, l_playertransform, current_playertransform,
        mothBombObj, r_wall, l_wall;
    public string phaseName;
    private float restTime, hoverTime, time = 0, handheight, 
        groundHeight, offset, inBetweenTime, scaling;
    private bool rightArmTurn;
    private Vector3 destination, righthandorig, lefthandorig, bombstart;
    public BoolData playergrabbed;
    private Quaternion newrot, origrot;
    public GameObject mothBomb;
    private int numOfBombs;
    public IntData RightArmHealth, LeftArmHealth;
    
    public override IEnumerator StartPhase(List<GameObject> objs)
    {
        RightArmHealth.value = 25;
        LeftArmHealth.value = 25;
        handheight = 10;
        groundHeight = .5f;
        restTime = .5f;
        hoverTime = .75f;
        offset = .5f;
        inBetweenTime = 2f;
        numOfBombs = 3;
        player = objs[0];
        r_hand = objs[1];
        l_hand = objs[2];
        r_playertransform = objs[3];
        l_playertransform = objs[4];
        r_wall = objs[5];
        l_wall = objs[6];
        //handcolliders
        objs[7].SetActive(true);
        objs[8].SetActive(true);
        righthandorig = r_hand.transform.position;
        lefthandorig = l_hand.transform.position;
        origrot = r_hand.transform.rotation;
        currentPhase = false;
        finishStart = false;
        finishEnd = false;
        rightArmTurn = true;
        Debug.Log("Start " + phaseName);
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
        //Phase
        while (currentPhase)
        {
            if (rightArmTurn)
            {
                current_hand = r_hand;
                current_playertransform = r_playertransform;
            }
            else
            {
                current_hand = l_hand;
                current_playertransform = l_playertransform;
            }
            //raise hand
            destination = current_hand.transform.position;
            destination.y = handheight;
            playergrabbed.value = false;
            Debug.Log("Raise Hand");
            Debug.Log(destination);
            while (!((current_hand.transform.position.y > destination.y - .01f) &&
                   (current_hand.transform.position.y < destination.y + .01f)))
            {
                current_hand.transform.position =
                    Vector3.Lerp(current_hand.transform.position, destination, 5 * Time.deltaTime);
                yield return new WaitForFixedUpdate();
            }
            //hover over player
            time = hoverTime;
            Debug.Log("Hover");
            while (time > 0)
            {
                destination = player.transform.position;
                destination.y = handheight;
                current_hand.transform.position =
                    Vector3.Lerp(current_hand.transform.position, destination, 5f * Time.deltaTime);
                yield return new WaitForFixedUpdate();
                if (!((destination.x <= player.transform.position.x + offset)
                      && (destination.x >= player.transform.position.x - offset)
                      && (destination.z <= player.transform.position.z + offset)
                      && (destination.z >= player.transform.position.z - offset)))
                {
                    time = hoverTime;
                }
                
                time -= Time.deltaTime;
                yield return new WaitForFixedUpdate();
            }
            Debug.Log("Smash");
            //Smash down
            destination = current_hand.transform.position;
            destination.y = 1.25f;
            playergrabbed.value = false;
            while (!((current_hand.transform.position.y > destination.y - .01f) &&
                   (current_hand.transform.position.y < destination.y + .01f)))
            {
                Debug.Log("Smash Down");
                current_hand.transform.position = Vector3.Lerp(current_hand.transform.position, destination, 5 * Time.deltaTime);
                yield return new WaitForFixedUpdate();
            }

            //if player under hand
            if (playergrabbed.value)
            {
                //throw player
                Debug.Log("Grab Player");
                destination = current_hand.transform.position;
                destination.y = handheight/2;
                if (rightArmTurn)
                {
                    newrot = Quaternion.Euler(0,0,90);
                    destination.x -= 5;
                    l_wall.SetActive(true);
                }
                else
                {
                    newrot = Quaternion.Euler(0,0,-90);
                    destination.x += 5;
                    r_wall.SetActive(true);
                }
                playergrabbed.value = false;
                while (!((current_hand.transform.position.y > destination.y - .1f) &&
                         (current_hand.transform.position.y < destination.y + .1f) && 
                         (current_hand.transform.position.x > destination.x - .1f) &&
                         (current_hand.transform.position.x < destination.x + .1f)))
                {
                    current_hand.transform.position = Vector3.Lerp(current_hand.transform.position, destination, 2 * Time.deltaTime);
                    player.transform.position = current_playertransform.transform.position;
                    current_hand.transform.rotation = Quaternion.Lerp(current_hand.transform.rotation, newrot, 2 * Time.deltaTime);
                    yield return new WaitForFixedUpdate();
                }
                destination = current_hand.transform.position;
                if (rightArmTurn)
                {
                    destination.x += 3;
                }
                else
                {
                    destination.x -= 3;
                }
                scaling = 1;
                while (!((current_hand.transform.position.x > destination.x - .1f) &&
                         (current_hand.transform.position.x < destination.x + .1f)))
                {
                    current_hand.transform.position = Vector3.Lerp(current_hand.transform.position, destination, 20 * scaling * Time.deltaTime);
                    player.transform.position = current_playertransform.transform.position;
                    scaling += 5 * Time.deltaTime;
                    yield return new WaitForFixedUpdate();
                    if (((current_hand.transform.position.x > destination.x - 1f) &&
                         (current_hand.transform.position.x < destination.x + 1f)))
                    {
                        if (rightArmTurn)
                        {
                            //player.GetComponent<EightWayMovement>().CancelControls();
                            player.GetComponent<Rigidbody>().velocity = Vector3.right * 50;
                        }
                        else
                        {
                            //player.GetComponent<EightWayMovement>().CancelControls();
                            player.GetComponent<Rigidbody>().velocity = Vector3.left * 50;
                        }
                    }
                } 
                player.GetComponent<PlayerMovementManager>().MovementEnable(true);
                player.GetComponent<PlayerMovementManager>().DashEnable(true);
            }
            //if not
            else
            {   
                time = restTime;
                while (time > 0)
                {
                    time -= Time.deltaTime;
                    if (rightArmTurn && RightArmHealth.value <= 0)
                    {
                        //perform animation
                        time = 0;
                    }
                    else if (!rightArmTurn && LeftArmHealth.value <= 0)
                    {
                        //perform animation
                        time = 0;
                    }
                    yield return new WaitForFixedUpdate();
                }
            }
            
            //reset hand
            Debug.Log("Raise Hand");
            destination = current_hand.transform.position;
            destination.y = handheight;
            playergrabbed.value = false;
            while (!((current_hand.transform.position.y > destination.y - .1f) &&
                     (current_hand.transform.position.y < destination.y + .1f)))
            {
                current_hand.transform.position =
                    Vector3.Lerp(current_hand.transform.position, destination, 2 * Time.deltaTime);
                current_hand.transform.rotation = Quaternion.Lerp(current_hand.transform.rotation, origrot, 2 * Time.deltaTime);
                yield return new WaitForFixedUpdate();
            }
            //move back
            Debug.Log("Move Back");
            if (rightArmTurn)
                destination = righthandorig;
            else
                destination = lefthandorig;
            destination.y = handheight;
            while (!((current_hand.transform.position.x > destination.x - .1f) 
                   &&(current_hand.transform.position.x < destination.x + .1f)
                   &&(current_hand.transform.position.z > destination.z - .1f)
                   &&(current_hand.transform.position.z < destination.z + .1f)))
            {
                current_hand.transform.position =
                    Vector3.Lerp(current_hand.transform.position, destination, 2 * Time.deltaTime);
                current_hand.transform.rotation = Quaternion.Lerp(current_hand.transform.rotation, origrot, 2 * Time.deltaTime);
                yield return new WaitForFixedUpdate();
            }
            
            //move down
            Debug.Log("Lower Hand");
            destination = current_hand.transform.position;
            destination.y = groundHeight;
            playergrabbed.value = false;
            while (!((current_hand.transform.position.y > destination.y - .1f) &&
                   (current_hand.transform.position.y < destination.y + .1f)))
            {
                current_hand.transform.position =
                    Vector3.Lerp(current_hand.transform.position, destination, 2 * Time.deltaTime);
                yield return new WaitForFixedUpdate();
            }

            numOfBombs = Random.Range(numOfBombs, numOfBombs + 2);
            for (int i = 0; i < numOfBombs; i++)
            {
                bombstart = mothBomb.transform.position;
                bombstart.x = Random.Range(bombstart.x - 3, bombstart.x + 3);
                mothBombObj = Instantiate(mothBomb);
                mothBombObj.transform.position = bombstart;
                yield return new WaitForSeconds(.5f);
            }
            yield return new WaitForSeconds(inBetweenTime);
            rightArmTurn = !rightArmTurn;

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
