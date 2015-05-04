# Simple Docker Container for Jekyll Work

Docker Hub: <https://registry.hub.docker.com/u/grahamc/jekyll/>

Use example:

    docker run --rm -v "$PWD:/src" grahamc/jekyll

run as a background daemon:

    docker run -d -v "$PWD:/src" -p 4000:4000 grahamc/jekyll

By default jekyll will be invoked with the command `serve -H 0.0.0.0`, which you can override, e.g.:

    docker run "$PWD:/src" grahamc/jekyll new .


## Goodies
 - Supports pygments syntax highlighting
 - Supports Github Pages
 - Supports Jekyll Redirect From
 - Supports Kramdown
 - Supports RDiscount
 - Supports Rouge


# License: Public Domain

Do what you want!
