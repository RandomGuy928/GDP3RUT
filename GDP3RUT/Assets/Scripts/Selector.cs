using UnityEngine;
using System.Collections;

public class Selector : MonoBehaviour {
	
	bool selected;
	public bool closeOnly;
	public bool canBeSaved;
	bool isClose;
	public bool canBeSelected;
	
	RemoteControl controller;
	
	Behaviour farHalo;
	Behaviour closeHalo;
	Behaviour leftHalo;
	Behaviour rightHalo;
	
	public GameObject[] controlledRepulsors;
		
	// Use this for initialization
	void Start () {
		controller = GameObject.Find ("Player").GetComponent<RemoteControl>();
		controller.AddSelector(gameObject);
		
		closeHalo = (Behaviour)transform.GetChild (0).GetComponent ("Halo");
		farHalo = (Behaviour)transform.GetChild (1).GetComponent ("Halo");
		leftHalo = (Behaviour)transform.GetChild (2).GetComponent ("Halo");
		rightHalo = (Behaviour)transform.GetChild (3).GetComponent ("Halo");
		
		closeHalo.enabled = false;
		farHalo.enabled = false;
		leftHalo.enabled = false;
		rightHalo.enabled = false;

	}
	
	// Update is called once per frame
	void Update () {
		if(isClose && selected){
			closeHalo.enabled = true;
			farHalo.enabled = false;
			leftHalo.enabled = false;
			rightHalo.enabled = false;
		}
		else if(controller.leftRemote == gameObject){
			closeHalo.enabled = false;
			farHalo.enabled = false;
			leftHalo.enabled = true;
			rightHalo.enabled = false;
		}
		else if(controller.rightRemote == gameObject){
			closeHalo.enabled = false;
			farHalo.enabled = false;
			leftHalo.enabled = false;
			rightHalo.enabled = true;
		}
		else if(selected){
			closeHalo.enabled = false;
			farHalo.enabled = true;
			leftHalo.enabled = false;
			rightHalo.enabled = false;
		}
		else{
			closeHalo.enabled = false;
			farHalo.enabled = false;
			leftHalo.enabled = false;
			rightHalo.enabled = false;	
		}
	}
	
	public void Select(){
		selected = true;	
	}
	
	public void Deselect(){
		selected = false;	
	}
	
	public void SetClose(bool newClose){
		isClose = newClose;
	}
	
	public void Trigger(){
		Repulsor rep = gameObject.GetComponent<Repulsor>();
		if(rep != null)
			rep.ToggleActive ();
		
		for(int i = 0; i < controlledRepulsors.Length; i++){
			Repulsor repul = controlledRepulsors[i].GetComponent<Repulsor>();
			if(repul != null)
				repul.ToggleActive ();	
		}
	}
	
	public Vector3 GetPos(){
		return transform.position;	
	}
}
