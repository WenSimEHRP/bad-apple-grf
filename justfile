build:
    nml/nmlc bad_apple.nml

gen:
    python3 scripts/gen.py

fetch:
    wget https://ia601608.us.archive.org/17/items/bad-apple-resources/bad_apple%4060fps.ia.mp4
    ffmpeg -i bad_apple@60fps.ia.mp4 -vf fps=1000/27 output/%04d.png

clone_nml:
    git clone https://github.com/openttd/nml.git

clean:
    find -name "*.png" -delete
    find -name "*.grf" -delete
    find -name "*.mp4" -delete
    find -name "*.nml" -delete
    rm .nmlcache -r

cp:
    cp ./bad_apple.grf ~/.local/share/openttd/newgrf/
