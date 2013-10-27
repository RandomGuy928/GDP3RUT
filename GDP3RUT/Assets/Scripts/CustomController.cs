using UnityEngine;
using System.Collections;

public class CustomController : MonoBehaviour {

	public float moveSpeed = 6f; // move speed
	public float turnSpeed = 90f; // turning speed (degrees/second)
	public float lerpSpeed = 10f; // smoothing speed
	public float gravity = 10f; // gravity acceleration
	public bool isGrounded;
	public float deltaGround = 0.2f; // character is grounded up to this distance
	public float jumpSpeed = 10f; // vertical jump initial speed
	public float jumpRange = 10f; // range to detect target wall
	 
	Vector3 surfaceNormal; // current surface normal
	Vector3 myNormal; // character normal
	float distGround; // distance from character position to ground
	bool jumping = false; // flag &quot;I'm jumping to wall&quot;
	float vertSpeed = 0; // vertical jump current speed 
	
	RepulsorManager manager;
	 
	public void SetManager(GameObject man){
		manager = man.GetComponent<RepulsorManager>();	
	}
	
	void Start(){
	    myNormal = transform.up; // normal starts as character up direction 
	    rigidbody.freezeRotation = true; // disable physics rotation
	    // distance from transform.position to ground
	    //distGround = collider.bounds.extents.y - collider.center.y;
		distGround = .5f;
	}
	 
	void FixedUpdate(){
	    // apply constant weight force according to character normal:
	    //rigidbody.AddForce(-gravity*rigidbody.mass*myNormal);
	    rigidbody.AddForce(manager.GravityAtPoint (transform.position));
	}
	 
	void Update(){
	    // jump code - jump to wall or simple jump
	    if (jumping) return;  // abort Update while jumping to a wall
	    Ray ray;
	    RaycastHit hit;
	    if (Input.GetButtonDown("Jump")){ // jump pressed:
	        ray = new Ray(transform.position, transform.forward);
	        if (Physics.Raycast(ray, out hit, jumpRange)){ // wall ahead?
	            StartCoroutine(JumpToWall(hit.point, hit.normal)); // yes: jump to the wall
	        }
	        else if (isGrounded){ // no: if grounded, jump up
	            rigidbody.velocity += jumpSpeed * myNormal;
	        }                
	    }
	 
	    // movement code - turn left/right with Horizontal axis:
	    transform.Rotate(0, Input.GetAxis("Mouse X")*turnSpeed*Time.deltaTime, 0);
		
		// update surface normal and isGrounded:
	    ray = new Ray(transform.position, -myNormal); // cast ray downwards
	    if (Physics.Raycast(ray, out hit)){ // use it to update myNormal and isGrounded
	        isGrounded = hit.distance <= distGround + deltaGround;
	        surfaceNormal = hit.normal;
	    }
	    else {
	        isGrounded = false;
	        // assume usual ground normal to avoid "falling forever"
	        surfaceNormal = Vector3.up; 
	    }
	    myNormal = Vector3.Lerp(myNormal, surfaceNormal, lerpSpeed*Time.deltaTime);
	    // find forward direction with new myNormal:
	    var myForward = Vector3.Cross(transform.right, myNormal);
	    // align character to the new myNormal while keeping the forward direction:
	    var targetRot = Quaternion.LookRotation(myForward, myNormal);
	    transform.rotation = Quaternion.Lerp(transform.rotation, targetRot, lerpSpeed*Time.deltaTime);
	    // move the character forth/back with Vertical axis:
	    transform.Translate(0, 0, Input.GetAxis("Vertical")*moveSpeed*Time.deltaTime); 
	    transform.Translate(Input.GetAxis("Horizontal")*moveSpeed*Time.deltaTime,0,0); 
	}
	 
	IEnumerator JumpToWall(Vector3 point, Vector3 normal){
	    // jump to wall 
	    jumping = true; // signal it's jumping to wall
	    rigidbody.isKinematic = true; // disable physics while jumping
	    var orgPos = transform.position;
	    var orgRot = transform.rotation;
	    var dstPos = point + normal * (distGround + 0.5f); // will jump to 0.5 above wall
	    var myForward = Vector3.Cross(transform.right, normal);
	    var dstRot = Quaternion.LookRotation(myForward, normal);
	    for (float t = 0.0f; t < 1.0f; ){
	        t += Time.deltaTime;
	        transform.position = Vector3.Lerp(orgPos, dstPos, t);
	        transform.rotation = Quaternion.Slerp(orgRot, dstRot, t);
	        yield return null; // return here next frame
	    }
	    myNormal = normal; // update myNormal
	    rigidbody.isKinematic = false; // enable physics
	    jumping = false; // jumping to wall finished
	}
}
