FROM ubuntu:latest
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:mozillateam/firefox-next
RUN apt-get update && apt-get install -y firefox \
  && rm -rf /var/lib/apt/lists/*

RUN firefox -CreateProfile "headless /moz-headless"  -headless
ADD user.js /moz-headless/

ADD index.html /root/

EXPOSE 6000
CMD ["firefox", "-p", "headless", "-headless", "--start-debugger-server", "6000", "file:///root/index.html"]
