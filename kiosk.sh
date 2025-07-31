#!/bin/bash

xset -dpms
xset s off
openbox-session &
start-pulseaudio-x11

while true; do
  rm -rf ~/.{config,cache}/chromium-browse/
  chromium-browse --kiosk --no-first-run  'https://google.com'
done