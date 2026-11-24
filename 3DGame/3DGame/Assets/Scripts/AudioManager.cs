using UnityEngine;
using UnityEngine.Audio;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using UnityEngine.Playables;

public class AudioManager : MonoBehaviour
{
    public List<AudioSource> sounds = new List<AudioSource> { };
    private List<float> ogVolume = new List<float> { };
    private List<float> ogPitch = new List<float> { };
    //public float masterVolume;
    //public float ambienceVolume;
    //public float soundsVolume;

    [SerializeField] private AudioMixerGroup masterMixerGroup;

    [SerializeField] private Animator waveCrashAnimator;

    private bool fadingOut;
    private GameManager gameManager;
    public bool scoping;

    private float ambientNoiseTimer;

    private void Start()
    {
        gameManager = GameObject.FindWithTag("Game Manager").GetComponent<GameManager>();

        ambientNoiseTimer = Random.Range(15.0f, 20.0f);

        sounds = gameObject.GetComponents<AudioSource>().ToList();
        sounds.Remove(sounds[0]); // The first sound on the AudioManager should be the constant ambient noise

        foreach (var sound in sounds)
        {
            ogVolume.Add(sound.volume);
            ogPitch.Add(sound.pitch);
        }
    }

    private void Update()
    {
        // Randomized ambience sounds
        if (sounds.Count < 3)
            return;

        if (!Cursor.visible)
            ambientNoiseTimer -= Time.deltaTime;

        if (ambientNoiseTimer <= 0.0f)
        {
            int chosenSound = Random.Range(0, 3);
            PlayAudio(chosenSound);
            ambientNoiseTimer = Random.Range(20.0f, 60.0f);

            if (chosenSound == 0)
                waveCrashAnimator.SetTrigger("Splash");

        }
    }

    public void EnableOrDisableAudio(bool enable)
    {
        fadingOut = !enable;
    }

    public void PlayAudio(int i)
    {
        if (sounds[i] == null)
        {
            Debug.Log($"The sound at index {i} doesn't exist. Please add the sound.");
            return;
        }

        sounds[i].volume = Random.Range(ogVolume[i] * 0.8f, ogVolume[i]);
        sounds[i].pitch = Random.Range(ogPitch[i] * 0.8f, ogPitch[i]);

        sounds[i].Play();
    }
    public void PauseAudio(int i)
    {
        sounds[i].Pause();
    }
    public void StopAudio(int i)
    {
        sounds[i].Stop();
    }

    public void PlayAudioNormal(int i)
    {
        if (sounds[i] == null)
        {
            Debug.Log($"The sound at index {i} doesn't exist. Please add the sound."); 
            return;
        }

        sounds[i].Play();
    }

    public void ChangeAudioVolume(int i, float f)
    {
        if (sounds[i] == null)
        {
            Debug.Log($"The sound at index {i} doesn't exist. Please add the sound.");
            return;
        }

        sounds[i].volume += f;
    }

    public void SetMasterVolume(float linearVolume)
    {
        float dB = Mathf.Log10(Mathf.Clamp(linearVolume, 0.0001f, 1f)) * 20f;
        masterMixerGroup.audioMixer.SetFloat("MasterVolume", dB);
    }
    public void SetMusicVolume(float linearVolume)
    {
        float dB = Mathf.Log10(Mathf.Clamp(linearVolume, 0.0001f, 1f)) * 20f;
        masterMixerGroup.audioMixer.SetFloat("MusicVolume", dB);
    }
    public void SetSFXVolume(float linearVolume)
    {
        float dB = Mathf.Log10(Mathf.Clamp(linearVolume, 0.0001f, 1f)) * 20f;
        masterMixerGroup.audioMixer.SetFloat("SFXVolume", dB);
    }
    public void SetAmbientVolume(float linearVolume)
    {
        float dB = Mathf.Log10(Mathf.Clamp(linearVolume, 0.0001f, 1f)) * 20f;
        masterMixerGroup.audioMixer.SetFloat("AmbientVolume", dB);
    }
}
