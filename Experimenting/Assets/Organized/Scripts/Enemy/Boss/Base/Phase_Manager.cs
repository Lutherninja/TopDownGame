using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Phase_Manager : MonoBehaviour
{
   public List<Phase> phases;
   public List<int> healthLevels;
   public IntData BossHealth;
   private int currentPhase;
   private bool switchPhase;
   public List<GameObject> objs;
   public int InitHealth;


   public void Start()
   {
      BossHealth.value = InitHealth;
      StartBattle();
   }

   private void StartBattle()
   {
      currentPhase = 0;
      StartCoroutine(StartPhase());
   }

   private IEnumerator StartPhase()
   {
      StartCoroutine(phases[currentPhase].StartPhase(objs));
      yield return new WaitUntil(() => phases[currentPhase].finishStart);
      StartCoroutine(RunPhase());
   }

   private IEnumerator RunPhase()
   {
      StartCoroutine(phases[currentPhase].UpdatePhase(objs));
      yield return new WaitUntil(()=> BossHealth.value <= healthLevels[currentPhase]);
      phases[currentPhase].currentPhase = false;
      StartCoroutine(NextPhase());
   }

   private IEnumerator NextPhase()
   {
      StopCoroutine(phases[currentPhase].UpdatePhase(objs));
      StartCoroutine(phases[currentPhase].StopPhase(objs));
      yield return new WaitUntil(() =>phases[currentPhase].finishEnd);
      currentPhase++;
      if (currentPhase < phases.Count)
      {
         StartCoroutine(StartPhase());
      }
      else
      {
         EndBattle();
      }
   }

   private void EndBattle()
   {
      Debug.Log("End");
   }




}
