using UnityEngine;
using System.Collections;

public class Selector : MonoBehaviour {
	
	bool selected;
	bool targeted;
	public bool closeOnly;
	public bool canBeSaved;
	bool isClose;
	public bool canBeSelected;
	public bool hasHalos = true;
	
	RemoteControl controller;
	
	Behaviour farHalo;
	Behaviour closeHalo;
	Behaviour leftHalo;
	Behaviour rightHalo;
	
	public GameObject[] controlledRepulsors;
	
	ArrayList switches = new ArrayList();
	
	int lengthOfLineRenderer;
	
	// Use this for initialization
	void Start () {
		controller = GameObject.Find ("Player").GetComponent<RemoteControl>();
		controller.AddSelector(gameObject);
		
		if(hasHalos){
			closeHalo = (Behaviour)transform.GetChild (0).GetComponent ("Halo");
			farHalo = (Behaviour)transform.GetChild (1).GetComponent ("Halo");
			leftHalo = (Behaviour)transform.GetChild (2).GetComponent ("Halo");
			rightHalo = (Behaviour)transform.GetChild (3).GetComponent ("Halo");
			
			closeHalo.enabled = false;
			farHalo.enabled = false;
			leftHalo.enabled = false;
			rightHalo.enabled = false;
		}
		
		for(int i = 0; i < controlledRepulsors.Length; i++){
			Selector sel = ((GameObject)controlledRepulsors[i]).GetComponent<Selector>();
			if(sel != null){
				sel.AddSwitch(gameObject);	
			}
		}
	}
	
	public LineRenderer InitializeLineRenderer(){
		lengthOfLineRenderer = (controlledRepulsors.Length + switches.Count)*2;
		LineRenderer lineRenderer = gameObject.AddComponent<LineRenderer>();
        lineRenderer.material = new Material(Shader.Find("Particles/Additive"));
        lineRenderer.SetColors(Color.green, Color.green);
        lineRenderer.SetWidth(0.2F, 0.2F);
        lineRenderer.SetVertexCount(lengthOfLineRenderer);
		return lineRenderer;
	}
	
	public void DisplayConnections(){
		LineRenderer lineRenderer = GetComponent<LineRenderer>();
		if(lineRenderer == null)
			lineRenderer = InitializeLineRenderer();
		lineRenderer.enabled = true;
		
		int i = 0;
		for(; i < controlledRepulsors.Length; i++){
			lineRenderer.SetPosition(i*2, transform.position);
			lineRenderer.SetPosition((i*2)+1, controlledRepulsors[i].transform.position);
		}
		for(; i - controlledRepulsors.Length < switches.Count; i++){
			lineRenderer.SetPosition(i*2, transform.position);
			lineRenderer.SetPosition((i*2)+1, ((GameObject)switches[i-controlledRepulsors.Length]).transform.position);	
		}
	}
	
	public void HideConnections(){
		LineRenderer lineRenderer = GetComponent<LineRenderer>();
		if(lineRenderer != null)
			lineRenderer.enabled = false;
	}
	
	public void AddSwitch(GameObject sw){
		switches.Add (sw);
	}
	
	// Update is called once per frame
	void Update () {
		if(targeted)
			DisplayConnections ();
		else
			HideConnections();
		if(!hasHalos)
			return;
		if(isClose && selected && !canBeSaved){
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
	
	public void Target(){
		targeted = true;	
	}
	
	public void Detarget(){
		targeted = false;	
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
	
	public void Activate(){
		Repulsor rep = gameObject.GetComponent<Repulsor>();
		if(rep != null)
			rep.SetActive ();
	}
	
	public void Activate(bool isLeft){
		Repulsor rep = gameObject.GetComponent<Repulsor>();
		if(rep != null)
			rep.SetActive (isLeft);
	}
	
	public void Deactivate(){
		Repulsor rep = gameObject.GetComponent<Repulsor>();
		if(rep != null)
			rep.SetInactive ();
	}
	
	public Vector3 GetPos(){
		return transform.position;	
	}
}
