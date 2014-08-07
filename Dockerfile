FROM ruby
MAINTAINER graham@grahamc.com

RUN apt-get update && \
  apt-get install -y \
  node \
  python-pygments \
  && apt-get clean && rm -rf /var/lib/apt/lists/

RUN gem install \
  jekyll \
  rdiscount \
  kramdown \
  github-pages \
  jekyll-redirect-from \
  rouge

VOLUME /src
EXPOSE 4000

WORKDIR /src
ENTRYPOINT ["jekyll"]
