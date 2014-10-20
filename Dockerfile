FROM ruby:2.1
MAINTAINER graham@grahamc.com

RUN apt-get update \
  && apt-get install -y \
    node \
    python-pygments

RUN apt-get clean \
  && rm -rf /var/lib/apt/lists

RUN gem install \
  bundler \
  github-pages \
  jekyll \
  jekyll-redirect-from \
  kramdown \
  rdiscount \
  rouge

EXPOSE 4000

WORKDIR /data
ENTRYPOINT ["jekyll"]

