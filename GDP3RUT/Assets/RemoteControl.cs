using UnityEngine;
using System.Collections;

public class RemoteControl : MonoBehaviour {
	
	Repulsor[] controlledRepulsors = new Repulsor[3];
	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		SelectRepulser();
	}
	
	void SelectRepulser ()
	{
		// check if cone collides with repulsors
		// if more than 1: select the repulsor that is closest to the center of the Cone.
		//
	}
		
	void AssignRepulsor ()	
	{
		
		
		
		// Assign repulsor to the specified key. Add to array of repulsors. 
		
		
	}
}
