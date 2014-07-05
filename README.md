# Simple Docker Container for Jekyll Work

Docker Hub: <https://registry.hub.docker.com/u/grahamc/jekyll/>

Use example:

```
sudo docker run --rm -v "$PWD:/src" grahamc/jekyll build
```

or for repeated calls:

```
alias jekyll='sudo docker run --rm -v "$PWD:/src" grahamc/jekyll'
jekyll build
jekyll serve
```

run as a background daemon:
```
sudo docker run -d --rm -v "$PWD:/src" -p 4000:4000 grahamc/jekyll serve
```

## Goodies
 - Supports pygments syntax highlighting
 - Supports RDiscount
 - Supports Kramdown
