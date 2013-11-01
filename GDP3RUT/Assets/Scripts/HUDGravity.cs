using UnityEngine;
using System.Collections;


public class HUDGravity : MonoBehaviour {
	
	RepulsorManager manager;

	Vector3 tmp;

	public void SetManager(GameObject man){
		manager = man.GetComponent<RepulsorManager>();	
	}	
	
	// Update is called once per frame
	void Update () {
		
		tmp = transform.eulerAngles;
		tmp = (manager.GravityAtPoint(transform.position));
		transform.up = tmp;
		
	}
}
