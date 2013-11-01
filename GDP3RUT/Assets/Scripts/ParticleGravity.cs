using UnityEngine;
using System.Collections;


public class ParticleGravity : MonoBehaviour {
	
	RepulsorManager manager;
	Vector3 tmp;

	public void SetManager(GameObject man){
		manager = man.GetComponent<RepulsorManager>();	
	}	
	
	// Update is called once per frame
	void Update () {
		
		tmp = transform.eulerAngles;
		
		tmp = (manager.GravityAtPoint(transform.position));
		
		transform.up = tmp;
		
		//transform.LookAt(manager.GravityAtPoint(transform.position));
		
	}
	
	void LateUpdate () {
 
       ParticleSystem.Particle[] p = new ParticleSystem.Particle[particleSystem.particleCount+1];
       int l = particleSystem.GetParticles(p);
 
        int i = 0;
        while (i < l) {
           p[i].velocity = (-.1f * manager.GravityAtPoint(p[i].position));
         i++;
        }
 
       particleSystem.SetParticles(p, l);    
 
    }
}
