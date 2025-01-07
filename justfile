build:
    nml/nmlc bad_apple.nml

gen:
    python3 scripts/gen.py

fetch:
    wget https://ia601608.us.archive.org/17/items/bad-apple-resources/bad_apple%4060fps.ia.mp4
    ffmpeg -i bad_apple@60fps.ia.mp4 -vf fps=1000/27 output/%04d.png
    # get the audio of the video, convert it to WAV with specified requirements
    ffmpeg -i bad_apple@60fps.ia.mp4 -ac 1 -ar 44100 -sample_fmt s16 -c:a pcm_s16le bad_apple_audio.wav

clone_nml:
    git clone https://github.com/openttd/nml.git

cp:
    # different on windows lolz
    cp ./bad_apple.grf ~/.local/share/openttd/newgrf/
