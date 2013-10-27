using UnityEngine;
using System.Collections;

public class Repulsor : MonoBehaviour {
		
	RepulsorManager manager;
	public float strength = 50f;
	
	// Use this for initialization
	void Start () {
		manager = GameObject.Find ("RepulsorManager").GetComponent<RepulsorManager>();
		manager.AddRepulsor(gameObject);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	public float Contribution(float dist){
		return strength;
	}
}
