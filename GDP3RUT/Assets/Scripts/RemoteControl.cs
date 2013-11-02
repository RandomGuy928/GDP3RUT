using UnityEngine;
using System.Collections;

public class RemoteControl : MonoBehaviour {
		
	ArrayList selectors = new ArrayList();
	
	public float maxAngleFar = 15;
	public float maxAngleClose = 90;
	public float closeFarThreshold = 5;	
	
	GameObject last = null;
	
	public GameObject leftRemote;
	public GameObject rightRemote;
	
	public bool displayConnections = false;
	
	// Use this for initialization
	void Start () 
	{
	}
	
	// Update is called once per frame
	void Update () 
	{
		
		if(Input.GetButtonDown ("ToggleConnections")){
			displayConnections = !displayConnections;	
		}
			
		
		if(!Input.GetButton ("Shift")){
			if(Input.GetButtonDown("Fire1") && leftRemote != null){
				leftRemote.GetComponent<Selector>().Activate();	
			}
			if(Input.GetButtonDown("Fire2") && rightRemote != null){
				rightRemote.GetComponent<Selector>().Activate();	
			}
		}
		
		if(Input.GetButtonUp("Fire1") && leftRemote != null){
			leftRemote.GetComponent<Selector>().Deactivate();	
		}
		if(Input.GetButtonUp("Fire2") && rightRemote != null){
			rightRemote.GetComponent<Selector>().Deactivate();	
		}
		
		GameObject sel = SelectRepulser(maxAngleClose, closeFarThreshold, true, false);
		bool close;
		if(sel == null){
			sel = SelectRepulser (maxAngleFar, 9999f, false, false);
			close = false;
		}
		else{
			close = true;
		}

		if(last != sel && last != null){
			Selector s = last.GetComponent<Selector>();
			s.Deselect();
			s.Detarget ();
			last = null;
		}
		if(last == sel && last != null){
			last.GetComponent<Selector>().Detarget ();	
		}
		if(sel != null){
			last = sel;
			sel.GetComponent<Selector>().Select();
			sel.GetComponent<Selector>().SetClose(close);
			
			if(sel.GetComponent<Selector>().canBeSaved){
				if(Input.GetButton ("Shift")){
					if(Input.GetButtonDown ("Fire1")){
						if(rightRemote == sel){
							rightRemote = leftRemote;	
						}
						leftRemote = sel;
					}
					if(Input.GetButtonDown ("Fire2")){
						if(leftRemote == sel){
							leftRemote = rightRemote;	
						}
						rightRemote = sel;
					}
				}
			}
			
			if(Input.GetButtonDown("Use") && close && !sel.GetComponent<Selector>().canBeSaved){
				sel.GetComponent<Selector>().Trigger();	
			}
			if(!displayConnections)
				return;
		}
		else{
			if(!displayConnections)
				return;
			sel = SelectRepulser(maxAngleClose, closeFarThreshold, true, true);
			if(sel == null){
				sel = SelectRepulser (maxAngleFar, 9999f, false, true);
			}
			last = sel;
		}
		
		if(sel == null)
			return;
		
		sel.GetComponent<Selector>().Target ();
		
		


		//    currentSelections.Clear ();
	}
	
	GameObject SelectRepulser (float angle, float maxDist, bool close, bool ignoreSelectability)
	{
		// check if cone collides with repulsors
		// if more than 1: select the repulsor that is closest to the center of the Cone.
		//
		
		if(selectors.Count == 0)
			return null;
		
		GameObject sel = null;
		float smallestAngle = angle;
		for(int i = 0; i < selectors.Count; i++){
			Vector3 newVec = ((GameObject)selectors[i]).transform.position - transform.position;
			if(newVec.magnitude > maxDist ||
				(!ignoreSelectability && ((GameObject)selectors[i]).GetComponent<Selector>().closeOnly && !close) ||
				(!ignoreSelectability && !((GameObject)selectors[i]).GetComponent<Selector>().canBeSelected))
				continue;
			float a = Vector3.Angle (Camera.main.transform.forward, newVec);
			if(a < smallestAngle){
				Ray ray = new Ray(transform.position, newVec);
				RaycastHit hit;
				if(Physics.Raycast (ray, out hit)){
					if(hit.collider.gameObject == (GameObject)selectors[i]){
						smallestAngle = a;
						sel = (GameObject)selectors[i];
					}
				}
			}
		}
		
		return sel;
	}
		
	void AssignRepulsor ()	
	{
		
		
		
		// Assign repulsor to the specified key. Add to array of repulsors. 
		
		
	}
	
	public void AddSelector(GameObject go){
		selectors.Add (go);
	}
	
}
