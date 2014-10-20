FROM ruby:2.1
MAINTAINER graham@grahamc.com

RUN apt-get update \
  && apt-get install -y \
    node \
    python-pygments

RUN apt-get clean \
  && rm -rf /var/lib/apt/lists

RUN gem install \
  bundler --no-rdoc --no-ri \
  github-pages --no-rdoc --no-ri \
  jekyll --no-rdoc --no-ri \
  jekyll-redirect-from --no-rdoc --no-ri \
  kramdown --no-rdoc --no-ri\
  rdiscount --no-rdoc --no-ri \
  rouge --no-rdoc --no-ri

EXPOSE 4000

WORKDIR /data
ENTRYPOINT ["jekyll"]

