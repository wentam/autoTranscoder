#/bin/sh

ffmpeg -i $1 -c:v libx264 -preset slow -profile:v high -crf 27 -coder 1 -r 30 -pix_fmt yuv420p -movflags +faststart -g 30 -bf 2 -c:a aac -b:a 384k -profile:a aac_low $2--youtube-transcode.mp4
