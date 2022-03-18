Docker
======

We use Docker. *Sitelen Mute Fork* is on
[Docker Hub](https://hub.docker.com/r/fethbita/sitelen-mute-fork).

To read the help, run

```bash
docker run --rm -v "${PWD}/gallery:/gallery" -v "${PWD}/pictures:/pictures" fethbita/sitelen-mute-fork:latest
```

An example:

```bash
docker run --rm -v "${PWD}/gallery:/gallery" -v "${PWD}/pictures:/pictures" fethbita/sitelen-mute-fork:latest \
    --url https://gallery.kus.fi/ --keywords "Fujifilm, 90mm, X-T4" --author "Burak Can Kus" --title "Burak's Gallery" \
    --description "Pictures I take as I learn to shoot with my X-T4 and 90mm f/2 &lt;3" -c txt --no-sRGB \
    --quality 95 -r --viewdir /sitelen-mute/share/view /pictures /gallery
```
