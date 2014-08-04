FROM ruby
MAINTAINER graham@grahamc.com

RUN apt-get update
RUN apt-get install -y node python-pygments

RUN gem install jekyll rdiscount kramdown github-pages jekyll-redirect-from

VOLUME /src
EXPOSE 4000

WORKDIR /src
ENTRYPOINT ["jekyll"]

