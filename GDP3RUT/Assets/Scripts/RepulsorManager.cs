using UnityEngine;
using System.Collections;

public class RepulsorManager : MonoBehaviour {

	ArrayList repulsors = new ArrayList();
	public Vector3 grav_vec;
	public float grav_strength;
	
	void Start() {
		GameObject.FindGameObjectWithTag ("Player").GetComponent<CustomController>().SetManager(gameObject);
	}
	
	// Update is called once per frame
	void Update () {
		                        
	}
	
	public void AddRepulsor(GameObject rep){
		repulsors.Add (rep);
	}
	
	public Vector3 GravityAtPoint(Vector3 point){
		Vector3 grav = grav_strength * Vector3.Normalize (grav_vec);
		for(int i = 0; i < repulsors.Count; i++){
			Vector3 new_grav_component = ((GameObject)repulsors[i]).GetComponent<Repulsor>().Contribution(point);
			grav = grav + new_grav_component;//(strength * Vector3.Normalize(point - rPos));
		}
		return grav;
	}
}
