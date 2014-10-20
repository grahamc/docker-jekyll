# Simple Docker Container for Jekyll Work

Docker Hub: <https://registry.hub.docker.com/u/grahamc/jekyll/>

Use example:

```
sudo docker run --rm -v "$PWD:/data" grahamc/jekyll build
```

or for repeated calls:

```
alias jekyll='sudo docker run --rm -v "$PWD:/data" -p 4000:4000 grahamc/jekyll'
jekyll build
jekyll serve
```

run as a server with port forwarding:
```
sudo docker run --rm -v "$PWD:/data" -p 4000:4000 grahamc/jekyll serve
```

as a background daemon:
```
sudo docker run -d -v "$PWD:/data" -p 4000:4000 grahamc/jekyll serve
```

## Goodies
 - Supports pygments syntax highlighting
 - Supports Github Pages
 - Supports Jekyll Redirect From
 - Supports Kramdown
 - Supports RDiscount
 - Supports Rouge


# License: Public Domain

Do what you want!
