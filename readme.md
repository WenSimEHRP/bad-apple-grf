# Random Bad Apple GRF

> [!NOTE]
> You can change the link in `justfile` to encode _any_ video into a grf.

Fetches a bad apple video and encodes it to a newgrf.

Building Requirements:

- nmlc
- ffmpeg
- find
- python3
  - pillow
  - ply
- just (optional)
- internet connection

Note that when using fast-forward the sound will not be fast-forwarded.
The music will continue playing, even if you abandon the game. It will only stop when it ends or when you quit the game.

Building:

```bash
just clone_nml fetch gen build
```

Install NML by running `just clone_nml` or `git clone https://github.com/openttd/nml.git`

Building will take a _very_ long time. 😛
