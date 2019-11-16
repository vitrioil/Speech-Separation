#!/bin/bash

# Set up the directory structure

mkdir -p data/audio_set/audio
mkdir -p data/audio_visual/
mkdir -p data/train/audio/
mkdir -p data/train/mixed
mkdir -p data/train/embed

#Install dependencies
pip3 install -r requirements.txt --user
