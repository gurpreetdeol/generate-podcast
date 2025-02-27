FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git

<<<<<<< HEAD
RUN pip3 install pyYAML==6.0.1
=======
RUN pip3 install PyYAML
>>>>>>> 9eea17f (Updated Files)

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
