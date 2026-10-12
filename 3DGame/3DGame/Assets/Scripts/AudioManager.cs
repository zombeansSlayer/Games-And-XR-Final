using UnityEngine;
using UnityEngine.Audio;
using System.Collections.Generic;
using System.Collections;
using System.Linq;

public class AudioManager : MonoBehaviour
{
    public List<AudioSource> sounds = new List<AudioSource> { };
    private List<float> ogVolume = new List<float> { };
    private List<float> ogPitch = new List<float> { };
    public float masterVolume;
    public float ambienceVolume;
    public float soundsVolume;

    [SerializeField] private AudioMixerGroup masterMixerGroup;

    private bool fadingOut;
    public bool scoping;

    private float ambientNoiseTimer;

    private void Start()
    {
        ambientNoiseTimer = Random.Range(20.0f, 60.0f);

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
        // Dynamic audio fade

        if (scoping)
        {
            masterMixerGroup.audioMixer.GetFloat("MasterVolume", out float volume);
            masterMixerGroup.audioMixer.SetFloat("MasterVolume", Mathf.Clamp(volume - ((masterVolume + 20) * Time.deltaTime), masterVolume - 5f, masterVolume));
        }
        else if (!fadingOut)
        {
            masterMixerGroup.audioMixer.GetFloat("MasterVolume", out float volume);
            masterMixerGroup.audioMixer.SetFloat("MasterVolume", Mathf.Clamp(volume + ((masterVolume + 40) * Time.deltaTime), -80, masterVolume));
        }
        else if (fadingOut && !scoping)
        {
            masterMixerGroup.audioMixer.GetFloat("MasterVolume", out float volume);
            masterMixerGroup.audioMixer.SetFloat("MasterVolume", Mathf.Clamp(volume - ((masterVolume + 40) * Time.deltaTime), -80, masterVolume));
        }

        // Randomized ambience sounds
        if (sounds.Count < 3)
            return;

        ambientNoiseTimer -= Time.deltaTime;

        if (ambientNoiseTimer <= 0.0f)
        {
            int chosenSound = Random.Range(0, 3);
            PlayAudio(chosenSound);
            ambientNoiseTimer = Random.Range(20.0f, 60.0f);
        }
    }

    public void EnableOrDisableAudio(bool enable)
    {
        fadingOut = !enable;
    }

    public void PlayAudio(int i)
    {
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
}
