# Simple Docker Container for Jekyll Work

Use example:

```
sudo docker run --rm -v "$(pwd):/src" grahamc/jekyll build
```

or for repeated calls:

```
alias jekyll='sudo docker run --rm -v "$(pwd):/src" grahamc/jekyll'
jekyll build
```

run as a server:
```
docker run -d -v "$(pwd):/src" -p 4000:4000 grahamc/jekyll serve
```
