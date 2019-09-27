using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HomingMissle3D : MonoBehaviour {

	public Transform rocketTarget;
	public Rigidbody rocketRigidbody;
	public float turnR;
	public float rocketVelocity;
	public GameObject ExplosionEffect;
	public float explosionEffectTime = 1;

	private void FixedUpdate()
	{
		rocketRigidbody.velocity = transform.forward * rocketVelocity;
		var rocketTargetRotation = Quaternion.LookRotation(rocketTarget.position - transform.position);
		rocketRigidbody.MoveRotation (Quaternion.RotateTowards(transform.rotation, rocketTargetRotation, turnR));
	}
	void OnCollisionEnter(Collision collision)
    {
		GameObject clone = (GameObject) Instantiate (ExplosionEffect, transform.position, Quaternion.identity);
		Destroy (clone, explosionEffectTime);
		Destroy(gameObject);
	}
}
