FROM ubuntu:latest

# General
RUN apt-get update && apt-get -y upgrade

# Install pip and git
RUN apt-get -y install git python-pip
RUN apt-get -y install curl build-essential vim

# Install node from the PPA
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install nodejs

# Install Ruby + Bundler
RUN apt-get -y install ruby-full ruby ruby-dev libtcltk-ruby ri
RUN gem install bundler
