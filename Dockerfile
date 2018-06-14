FROM ubuntu:latest

# General
RUN apt-get update --fix-missing && apt-get -y upgrade

# Install pip and git
RUN apt-get -y install python3-minimal python3-dev git python-pip python3-pip
RUN apt-get -y install curl build-essential vim
RUN pip install --upgrade pip
RUN pip3 install --upgrade pip

# Install node
RUN apt-get -y install nodejs npm

# Install Ruby + Bundler
RUN apt-get -y install ruby-full ruby ruby-dev ruby2.5-dev
RUN gem install bundler
