#!/usr/bin/env bash
set -e

mkdir -p outputs tmp_video

FONT="/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf"

cat > tmp_video/slide1.txt <<'TXT'
NUTN CSIE

From learning to creating
Start with computer science
TXT

cat > tmp_video/slide2.txt <<'TXT'
National University of Tainan
Department of Computer Science and Information Engineering

Build foundations in programming,
systems, and problem solving.
TXT

cat > tmp_video/slide3.txt <<'TXT'
What We Learn

Programming
Artificial Intelligence
Data
Computer Systems
Networks
Hands-on Practice
TXT

cat > tmp_video/slide4.txt <<'TXT'
More Than Coding

Teamwork
Projects
Demos
Discussion
Problem Solving
TXT

cat > tmp_video/slide5.txt <<'TXT'
Study in Tainan

Learning connects with daily life.
Every project becomes part of a future path.
TXT

cat > tmp_video/slide6.txt <<'TXT'
NUTN CSIE

Learn steadily.
Create bravely.
TXT

make_slide() {
  local textfile="$1"
  local duration="$2"
  local color="$3"
  local outfile="$4"

  ffmpeg -y \
    -f lavfi -i "color=c=${color}:s=1280x720:r=30" \
    -f lavfi -i "anullsrc=channel_layout=stereo:sample_rate=44100" \
    -t "$duration" \
    -vf "drawtext=fontfile=${FONT}:textfile=${textfile}:fontcolor=white:fontsize=42:x=(w-text_w)/2:y=(h-text_h)/2:line_spacing=18" \
    -c:v libx264 -pix_fmt yuv420p -c:a aac -shortest "$outfile"
}

make_slide tmp_video/slide1.txt 5  0x172554 tmp_video/slide1.mp4
make_slide tmp_video/slide2.txt 10 0x1e293b tmp_video/slide2.mp4
make_slide tmp_video/slide3.txt 15 0x14532d tmp_video/slide3.mp4
make_slide tmp_video/slide4.txt 15 0x7c2d12 tmp_video/slide4.mp4
make_slide tmp_video/slide5.txt 10 0x312e81 tmp_video/slide5.mp4
make_slide tmp_video/slide6.txt 5  0x111827 tmp_video/slide6.mp4

cat > tmp_video/list.txt <<'TXT'
file 'slide1.mp4'
file 'slide2.mp4'
file 'slide3.mp4'
file 'slide4.mp4'
file 'slide5.mp4'
file 'slide6.mp4'
TXT

ffmpeg -y -f concat -safe 0 -i tmp_video/list.txt -c copy outputs/final_video.mp4

ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 outputs/final_video.mp4
