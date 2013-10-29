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
			Vector3 rPos = ((GameObject)repulsors[i]).transform.position;
			float strength = ((GameObject)repulsors[i]).GetComponent<Repulsor>().Contribution(Vector3.Distance (point, rPos));
			grav = grav + (strength * Vector3.Normalize(point - rPos));
		}
		return grav;
	}
}
