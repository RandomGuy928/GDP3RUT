using UnityEngine;
using System;
using System.Collections;

public class s_LoadLevel : MonoBehaviour {
	// Array of levels
	string[] levelArray = { "SimpleLevel", "ClimbLevel", "FlingLevel", "HarderLevel" };
	// On triggerenter:
	void OnTriggerEnter(Collider other) {
		
		String curLevel = Application.loadedLevelName;
		for(int i=0; i<levelArray.Length; i++) 
        {
			if(levelArray[i].Equals(curLevel))
			{
				String nextLevel = levelArray[i+1];
				Application.LoadLevel(nextLevel);	
			}    
        }
	}
	// Use this for initialization
	void Start () 
	{

	}
} 
