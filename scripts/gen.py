import glob
from string import Template
from PIL import Image

files = glob.glob("output/*.png")
path = "output"

def gen_entries(file, filename, path):
    with Image.open(file) as img:
        # resize the image to half of its size
        width, height = img.size
        width //= 2
        height //= 2
        with img.resize((width, height)) as img_resized:
            img_resized.save(f"{path}/r_{filename}")
    return f'[0,0,{width},{height},-{width//2},-{height//2},"{path}/r_{filename}"]'

entries = []
for file in files:
    filename = file.split("/")[-1]
    if filename.startswith("r_"):
        continue
    entries.append(gen_entries(file, filename, path))

with open("bad_apple.pynml", "r") as f:
    template = Template(f.read())

with open("bad_apple.nml", "w+") as f:
    f.write(
        template.substitute(
            spriteset_entries="\n".join(entries),
            # fancy? :P
            spriteset_entries_count=len(entries),
        )
    )
