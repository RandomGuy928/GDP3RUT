using UnityEngine;
using System.Collections;

public class CustomController : MonoBehaviour {
	
	public float terminalVelocity = 20f;
	public float moveSpeed = 6f; // move speed
	public float turnSpeed = 90f; // turning speed (degrees/second)
	public float lerpSpeed = 10f; // smoothing speed
	public float gravity = 10f; // gravity acceleration
	public bool isGrounded;
	public float deltaGround = 0.2f; // character is grounded up to this distance
	public float jumpSpeed = 10f; // vertical jump initial speed
	public float jumpRange = 10f; // range to detect target wall
	public float wallRunTime = 0.5f;
	public float wallRunResetTime = 1f;
	
	public float gravityAngle = 80f;
	 
	Vector3 surfaceNormal; // current surface normal
	Vector3 myNormal; // character normal
	float distGround; // distance from character position to ground
//	bool jumping = false; // flag &quot;I'm jumping to wall&quot;
//	float vertSpeed = 0; // vertical jump current speed 
	
	RepulsorManager manager;
	
//	int airborneCheck = 0;
	float jumpTime = 0;
	float collideTime = 0;
	float runResetTime = 0;
	Vector3 grav_vec = new Vector3(0,0,0);
//	Vector3 prev_hit = new Vector3(0, 0, 0);
//	bool spinning = false; 
	
	public void SetManager(GameObject man){
		manager = man.GetComponent<RepulsorManager>();	
	}
	
	void Start(){
	    myNormal = transform.up; // normal starts as character up direction 
	    rigidbody.freezeRotation = true; // disable physics rotation
	    // distance from transform.position to ground
	    //distGround = collider.bounds.extents.y - collider.center.y;
		distGround = 1.3f;
	}
	 
	void FixedUpdate(){
	    // apply constant weight force according to character normal:
	    //rigidbody.AddForce(-gravity*rigidbody.mass*myNormal);
		
		Vector3 grav = manager.GravityAtPoint (transform.position);
		if(!isGrounded){
	    	rigidbody.AddForce(grav);
		}
		//else if(Vector3.Angle (grav, -surfaceNormal) > gravityAngle){
		//	rigidbody.AddForce (grav);
		//	rigidbody.AddForce (50 * surfaceNormal);
		//}
		else{
			rigidbody.AddForce (-surfaceNormal * manager.GravityAtPoint (transform.position).magnitude);
		}
		
		if(rigidbody.velocity.magnitude > terminalVelocity)
			rigidbody.velocity = rigidbody.velocity.normalized * terminalVelocity;
	}
	
	public Vector3 GetGrav(){
		return grav_vec;	
	}
	 
	void Update(){
	    // jump code - jump to wall or simple jump
	    //if (jumping) return;  // abort Update while jumping to a wall
	    Ray ray;
	    RaycastHit hit;
	    if (Input.GetButtonDown("Jump")){ // jump pressed:
	        //ray = new Ray(transform.position, transform.forward);
	        //if (Physics.Raycast(ray, out hit, jumpRange)){ // wall ahead?
	        //    StartCoroutine(JumpToWall(hit.point, hit.normal)); // yes: jump to the wall
	        //}
	        //else
			if (isGrounded){ // no: if grounded, jump up
	            rigidbody.velocity += jumpSpeed * myNormal;
	        }                
	    }
		
		grav_vec = manager.GravityAtPoint (transform.position);
		
		//if (!isGrounded && !spinning){
			ray = new Ray(transform.position, grav_vec);
			if (Physics.Raycast (ray, out hit, jumpRange)){
				//if(hit.normal == prev_hit || prev_hit == Vector3.zero)
				//if(hit.normal != myNormal)
					//StartCoroutine (ReorientPlayer(hit.normal, 2.0f, 2, jumpTime));
				//else
					//StartCoroutine (ReorientPlayer(hit.normal, 2.0f, 3, jumpTime));
					FixNormal (hit.normal, 0.5f);
			}
			else{
				//StartCoroutine (ReorientPlayer(-grav_vec, 0.2f, 1, jumpTime));	
				FixNormal (-grav_vec, 0.05f);
			}
		//}
		//else{
		//	jumpTime = 0;	
		//}
	 
	    // movement code - turn left/right with Horizontal axis:
	    transform.Rotate(0, Input.GetAxis("Mouse X")*turnSpeed*Time.deltaTime, 0);
		
		// update surface normal and isGrounded:
	    ray = new Ray(transform.position, -myNormal); // cast ray downwards
	    if (Physics.Raycast(ray, out hit) && Vector3.Angle (grav_vec, -hit.normal) < gravityAngle){ // use it to update myNormal and isGrounded
	        isGrounded = hit.distance <= distGround + deltaGround;
	        surfaceNormal = hit.normal;
	    }
	    else {
	        isGrounded = false;
	        // assume usual ground normal to avoid "falling forever"
	        surfaceNormal = -grav_vec; 
	    }
		if(!isGrounded){
			jumpTime += Time.deltaTime;
		}
		else{
			collideTime = 0;
			jumpTime = 0;	
			runResetTime = 0;
		}
	    myNormal = Vector3.Lerp(myNormal, surfaceNormal, lerpSpeed*Time.deltaTime);
	    // find forward direction with new myNormal:
	    var myForward = Vector3.Cross(transform.right, myNormal);
	    // align character to the new myNormal while keeping the forward direction:
	    var targetRot = Quaternion.LookRotation(myForward, myNormal);
	    transform.rotation = Quaternion.Lerp(transform.rotation, targetRot, lerpSpeed*Time.deltaTime);
	    // move the character forth/back with Vertical axis:
		if(collideTime < wallRunTime){
			runResetTime = 0;
	    	transform.Translate(0, 0, Input.GetAxis("Vertical")*moveSpeed*Time.deltaTime); 
	    	transform.Translate(Input.GetAxis("Horizontal")*moveSpeed*Time.deltaTime,0,0); 
		}
		else{
			jumpTime = 0;
			runResetTime += Time.deltaTime;
			if(runResetTime > wallRunResetTime){
				collideTime = 0;
				runResetTime = 0;
			}
		}
		
	}
	
	void FixNormal(Vector3 normal, float radDelta){
		//myNormal = normal;	
		myNormal = Vector3.RotateTowards (myNormal, normal, radDelta, 1.0f);
	}
	
	void OnCollisionStay(Collision collInfo){
		if(!isGrounded){
			collideTime+=Time.deltaTime;
		}
	}
	
/*	IEnumerator ReorientPlayer(Vector3 normal, float timeScale, int type, float time){
		spinning = true;
		Quaternion orgRot = transform.rotation;
		airborneCheck = type;
		//var myForward = Vector3.Cross (transform.right, normal);
		var dstRot = Quaternion.LookRotation (transform.forward, normal);
		for(float t = time; t < 1.0f;){
			t += (timeScale * Time.deltaTime);
			transform.rotation = Quaternion.Slerp (orgRot, dstRot, t);
			//transform.Rotate (0,(Quaternion.Angle (transform.rotation,dstRot))/(150*timeScale*Time.deltaTime),0);
			jumpTime = t;
			if(airborneCheck == type)
				yield return null;
			else
				yield break;
		}
		myNormal = normal;
		spinning = false;
	}
	*/
	/* 
	IEnumerator JumpToWall(Vector3 point, Vector3 normal){
	    // jump to wall 
	    jumping = true; // signal it's jumping to wall
	    rigidbody.isKinematic = true; // disable physics while jumping
	    var orgPos = transform.position;
	    var orgRot = transform.rotation;
	    var dstPos = point + normal * (distGround + 0.5f); // will jump to 0.5 above wall
	    var myForward = Vector3.Cross(transform.right, normal);
	    var dstRot = Quaternion.LookRotation(myForward, normal);
	    for (float t = 0.0f; t < 0.5f; ){
	        t += Time.deltaTime;
	        transform.position = Vector3.Lerp(orgPos, dstPos, 2*t);
	        transform.rotation = Quaternion.Slerp(orgRot, dstRot, 2*t);
	        yield return null; // return here next frame
	    }
	    myNormal = normal; // update myNormal
	    rigidbody.isKinematic = false; // enable physics
	    jumping = false; // jumping to wall finished
	}
	*/
	
	void OnDrawGizmos(){
		if(manager != null)
			Gizmos.DrawRay (transform.position, manager.GravityAtPoint (transform.position));
		//Gizmos.DrawRay (transform.position, jumping.jumpDir);
	}
}
