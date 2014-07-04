FROM ruby
MAINTAINER graham@grahamc.com

RUN apt-get update
RUN apt-get install -y node

RUN gem install jekyll

VOLUME /src
EXPOSE 4000

WORKDIR /src
