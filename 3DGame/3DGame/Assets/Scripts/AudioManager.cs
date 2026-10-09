using UnityEngine;
using UnityEngine.Audio;
using System.Collections.Generic;

public class AudioManager : MonoBehaviour
{
    public List<AudioSource> sounds = new List<AudioSource> { };
    public float masterVolume;
    public float ambienceVolume;
    public float soundsVolume;

    [SerializeField] private AudioMixerGroup masterMixerGroup;

    private bool fadingOut;

    private void Update()
    {
        if (!fadingOut)
        {
            masterMixerGroup.audioMixer.GetFloat("MasterVolume", out float volume);
            masterMixerGroup.audioMixer.SetFloat("MasterVolume", Mathf.Clamp(volume + (masterVolume * Time.deltaTime), -80, masterVolume));
        }
        else if (fadingOut)
        {
            masterMixerGroup.audioMixer.GetFloat("MasterVolume", out float volume);
            masterMixerGroup.audioMixer.SetFloat("MasterVolume", Mathf.Clamp(volume - (masterVolume * Time.deltaTime), -80, masterVolume));
        }
    }

    public void EnableOrDisableAudio(bool enable)
    {
        fadingOut = !enable;
    }

    public void PlayAudio(int i)
    {
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
