# THIS IS AN INCOMPLETE PROJECT

# Make Sure AVSPEECH dataset is in data/audio\_visual/ folder

## Download the video dataset
### This can take a long time, you can stop downloading after few files have been downloaded by sending ^C

```bash
python3 download.py
```

## Extract sound from the video

```bash
python3 extract_audio.py
```

## Mix the audio

```bash
python3 audio_mixer_generator.py
```
