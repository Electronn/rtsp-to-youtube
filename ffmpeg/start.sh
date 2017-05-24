#!/bin/bash

if ! grep -q command "/etc/supervisord.d/ffmpeg.ini"; then
echo "command = ffmpeg -f lavfi -i anullsrc -rtsp_transport tcp -i '$RTSP_THREAD' -tune zerolatency -vcodec libx264 -t 12:00:00 -pix_fmt + -c:v copy -c:a aac -strict experimental -f flv rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_KEY" >> /etc/supervisord.d/ffmpeg.ini
fi

/usr/bin/python /usr/bin/supervisord -c /etc/supervisord.conf
