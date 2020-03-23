FROM python:3.7-slim-buster
ENV DEBIAN_FRONTEND noninteractive

#Install your favourite libraries/tools here
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
apt-utils python3 python3-virtualenv python3-dev python3-pip \
#this is optional, and add/replace with your own favourite libraries
wget \
&& rm -rf /var/lib/apt/lists/*

#Install your favourite Python libraries here
RUN pip install disco pathlib requests 

#this is optinal
RUN pip install datetime

# Entry point for dis.co
RUN mkdir -p /local/
WORKDIR /local/
ENTRYPOINT ["python", "-u"]

