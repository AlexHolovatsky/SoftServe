FROM ubuntu:latest
MAINTAINER Alex Holovatskyi
LABEL version="1.0"
RUN apt-get update && apt-get install -y python3
COPY hello.py /home/hello.py
ENV PERSON_NAME="Alex Holovastkyi"
WORKDIR /home
ENTRYPOINT ["/usr/bin/python3", "./hello.py"]
