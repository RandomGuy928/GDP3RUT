using UnityEngine;
using System.Collections;

public class RepulsorParticles : MonoBehaviour {
	
	Repulsor rep;

	// Use this for initialization
	void Start () {
		rep = transform.parent.gameObject.GetComponent<Repulsor>();
		if(rep.isGravityPlane){
			//transform.localScale = transform.parent.localScale/10f;
			transform.localScale = new Vector3(1,1,1);
			particleSystem.emissionRate = transform.parent.localScale.x * transform.parent.localScale.y * transform.parent.localScale.z * 10;
		}
	}
	
	// Update is called once per frame
	void Update () {
		if(rep.isActive)
			particleSystem.enableEmission = true;
		else
			particleSystem.enableEmission = false;
	}
	
	void LateUpdate(){
		ParticleSystem.Particle[] p = new ParticleSystem.Particle[particleSystem.particleCount+1];
		int l = particleSystem.GetParticles(p);
		Vector3 vec = new Vector3(0,0,0);
		if(rep.isGravityPlane)
			vec = rep.SimpleContribution (new Vector3(0,0,0)) * .1f;
		int i = 0;
		while (i < l) {
			if(!rep.isGravityPlane){
				vec = (rep.SimpleContribution (p[i].position))*.1f;
			}
			p[i].velocity = vec;
			i++;
		}
		
		particleSystem.SetParticles(p, l);    	
	}
}
