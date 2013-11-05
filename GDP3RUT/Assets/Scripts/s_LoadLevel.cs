using UnityEngine;
using System;
using System.Collections;

public class s_LoadLevel : MonoBehaviour {
	// Array of levels
	string[] levelArray = {"SimpleLevel", "Level1", "Level", "ClimbLevel",
	"HarderLevel", "FlingLevel", "IntersectionLevel", "GlassTableLevel",
	"GlassFling", "FlingAroundLevel", "Inversion", "GlassWindowLevel"};
	GameObject player;
	// On triggerenter:
	void OnTriggerEnter(Collider collider) {
		if(collider.gameObject.Equals(player))
		{
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
	}
	
	
	// Use this for initialization
	void Start () 
	{
		player = GameObject.FindGameObjectWithTag("Player");
	}
} 
