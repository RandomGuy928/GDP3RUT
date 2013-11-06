using UnityEngine;
using System.Collections;

public class Repulsor : MonoBehaviour {
		
	RepulsorManager manager;
	public float strength;
	public AnimationCurve strengthCurve = new AnimationCurve(new Keyframe(0, 1), new Keyframe(1, 1));
	public float range;
	public bool blockable = true;
	public bool isGravityPlane;
	public bool gravPlaneUsesVectorUp;
	public Vector3 gravityPlaneVector;
	public bool isActive = true;
	
	// Use this for initialization
	void Start () {
		manager = GameObject.Find ("RepulsorManager").GetComponent<RepulsorManager>();
		manager.AddRepulsor(gameObject);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	public void ToggleActive(){
		if(isActive)
			GetComponent<AudioHandler>().Deactivate ();
		else
			GetComponent<AudioHandler>().Activate ();

		isActive = !isActive;
	}
	
	public void SetActive(){
		isActive = true;
		GetComponent<AudioHandler>().Activate ();
	}
	
	public void SetActive(bool isLeft){
		isActive = true;
		GetComponent<AudioHandler>().Activate (isLeft);
	}
	
	public void SetInactive(){
		isActive = false;	
		GetComponent<AudioHandler>().Deactivate ();
	}
	
	public bool GetActive(){
		return isActive;	
	}
	
	public Vector3 Contribution(Vector3 point){
		Vector3 vec;
		
		// some checks for defaulting to zero vector
		if(!isActive || range == 0)
			return Vector3.zero;
		
		float dist = Vector3.Distance (point, transform.position);
		if(dist > range)
			return Vector3.zero;
		
		// getting the appropriate gravity vector
		if(isGravityPlane){
			if(gravPlaneUsesVectorUp)
				vec = transform.up;
			else
				vec = gravityPlaneVector.normalized;
		}
		else
			vec = Vector3.Normalize (point - transform.position);
				
		// determining if repulsion vector is blocked
		Ray ray;
	    RaycastHit hit;
	    ray = new Ray(point, -vec);
		if (blockable){
			if(Physics.Raycast(ray, out hit, dist*2, manager.GetMask ())){
				GameObject other = hit.collider.gameObject;
				if(gameObject != other){
					return Vector3.zero;
				}
			}
			else
				return Vector3.zero;
		}


		// scaling the return vector		
		return strength * strengthCurve.Evaluate(dist/range) * vec;
	}
	
	public Vector3 SimpleContribution(Vector3 point){
		// getting the appropriate gravity vector
		Vector3 vec;
		if(isGravityPlane){
			if(gravPlaneUsesVectorUp)
				vec = transform.up;
			else
				vec = gravityPlaneVector.normalized;
		}
		else
			vec = Vector3.Normalize (point - transform.position);
		float dist = Vector3.Distance (point, transform.position);
		return strength * strengthCurve.Evaluate(dist/range) * vec;
	}
	
	void OnDrawGizmos(){
		Gizmos.color = Color.green;
		//if(p != null)
			//Gizmos.DrawRay (p, -v * 100);
		//Gizmos.DrawRay (transform.position, jumping.jumpDir);
	}
}
