using UnityEngine;
using System.Collections;

public class StartGame : MonoBehaviour {
	
	public string firstLevel;
	
	// Use this for initialization
	void Start () {
		Screen.showCursor = false;
	}
	
	// Update is called once per frame
	void Update () {
		if(Screen.lockCursor == false)
		{
			if(Input.GetMouseButtonDown(0))
			{
				Screen.lockCursor = true;
			}
		}
		if(Input.GetKeyDown ("escape"))
			Application.Quit ();
		if(Input.GetButtonDown("Jump")){
			Application.LoadLevel(firstLevel);
		}	
	}
}
