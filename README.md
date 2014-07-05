# Simple Docker Container for Jekyll Work

Use example:

```
sudo docker run --rm -v $PWD:/src grahamc/jekyll build
```

or for repeated calls:

```
alias jekyll='sudo docker run --rm -v $PWD:/src grahamc/jekyll'
jekyll build
jekyll serve
```

run as a server:
```
sudo docker run -d -v $PWD:/src -p 4000:4000 grahamc/jekyll serve
```
