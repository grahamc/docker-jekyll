# Simple Docker Container for Jekyll Work

Use example:

```
sudo docker run --rm -v '$(pwd):/src' grahamc/jekyll build
```

or for repeated calls:

```
alias jekyll="sudo docker run --rm -v '$(pwd):/src' grahamc/jekyll"
jekyll build
```
