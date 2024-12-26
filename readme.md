# Random Bad Apple GRF

Fetches a bad apple video and encodes it to a newgrf.

Building Requirements:

- nmlc
- ffmpeg
- python3
  - pillow
  - ply
- just (optional)
- internet connection

Building:

```bash
just clone_nml fetch gen build
```

Install NML by running `just clone_nml` or `git clone https://github.com/openttd/nml.git`

Building will take a _very_ long time. 😛
