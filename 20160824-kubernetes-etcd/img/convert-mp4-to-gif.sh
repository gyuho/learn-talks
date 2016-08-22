#!/usr/bin/env bash

ffmpeg -y -i etcd_leadership_transfer.mp4 -vf fps=10,scale=750:-1:flags=lanczos,palettegen etcd_leadership_transfer.png
ffmpeg -i etcd_leadership_transfer.mp4 -i etcd_leadership_transfer.png -filter_complex "fps=10,scale=700:-1:flags=lanczos[x];[x][1:v]paletteuse" etcd_leadership_transfer.gif
