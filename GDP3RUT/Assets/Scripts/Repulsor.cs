using UnityEngine;
using System.Collections;

public class Repulsor : MonoBehaviour {
		
	RepulsorManager manager;
	public float strength;
	public AnimationCurve strengthCurve;
	public float range;
	public bool blockable;
	public bool isGravityPlane;
	public Vector3 gravityPlaneVector;
	public bool active = true;
	
	// Use this for initialization
	void Start () {
		manager = GameObject.Find ("RepulsorManager").GetComponent<RepulsorManager>();
		manager.AddRepulsor(gameObject);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	public void ToggleActive(){
		active = !active;
	}
	
	public void SetActive(){
		active = true;	
	}
	
	public void SetInactive(){
		active = false;	
	}
	
	public bool GetActive(){
		return active;	
	}
	
	public Vector3 Contribution(Vector3 point){
		Vector3 vec;
		if(!active || range == 0)
			return Vector3.zero;
		if(isGravityPlane)
			vec = gravityPlaneVector;
		else
			vec = Vector3.Normalize (point - transform.position);
		
		float dist = Vector3.Distance (point, transform.position);
		
		if(dist > range)
			return Vector3.zero;
		return strength * strengthCurve.Evaluate(dist/range) * vec;
	}
}
