using UnityEngine;
using System.Collections;

public class AudioHandler : MonoBehaviour {
	
	public AudioClip startSound;
	public AudioClip loopSound;
	public AudioClip endSound;
	
	public AudioClip leftSound;
	public AudioClip rightSound;
	
	bool updateAudio;
	//bool playing;
	bool continuePlaying;
	
	bool loopOnly;
	
	// Use this for initialization
	void Start () {
		loopOnly = false;
		updateAudio = false;
		if(startSound == null || endSound == null)
			loopOnly = true;
	}
	
	// Update is called once per frame
	void Update () {
		if(updateAudio){
			updateAudio = false;
			if(continuePlaying){
				// Assign the other clip and play it
				audio.clip = loopSound; 
				audio.Play(); 
				StartCoroutine (AudioTracker());
			}
			else{
				if(audio.clip.Equals (endSound)){
					//playing = false;
				}
				else if (!loopOnly){
					audio.clip = endSound;
					audio.Play ();
					StartCoroutine(AudioTracker());
				}
			}
		}
		
	}
	
	IEnumerator AudioTracker(){
		yield return new WaitForSeconds(audio.clip.length);
		updateAudio = true;
	}
	
	public void Activate(){
		//playing = true;
		continuePlaying = true;
		if(loopOnly){
			updateAudio = true;
		}
		else{
			audio.clip = startSound;
			audio.Play ();
			StartCoroutine(AudioTracker());
		}
	}
	
	public void Activate(bool isLeft){
		//playing = true;
		if(isLeft){
			loopSound = leftSound;
		}
		else{
			loopSound = rightSound;	
		}
		continuePlaying = true;
		if(loopOnly){
			updateAudio = true;
		}
		else{
			audio.clip = startSound;
			audio.Play ();
			StartCoroutine(AudioTracker());
		}
	}
	
	public void Deactivate(){
		continuePlaying = false;
		if(loopOnly){
			audio.Stop ();
			//playing = false;
			StopCoroutine ("AudioTracker");
		}
	}
}
