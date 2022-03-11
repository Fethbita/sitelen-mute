#!/bin/sh
set -e

/sitelen-mute/script/sitelen-mute --url https://gallery.kus.fi/ --keywords "Fujifilm, 90mm, X-T4" --author "Burak Can Kus" --title "Burak's Gallery" --description "Pictures I take as I learn to shoot with my X-T4 and 90mm f/2 &lt;3" -c txt --no-sRGB --quality 95 -s -r --viewdir /sitelen-mute/share/view /pictures /gallery

exec "$@"