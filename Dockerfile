FROM debian:wheezy

ENV LAST_APT_FETCH 20141107
RUN apt-get update
RUN apt-get install -yq openjdk-7-jre-headless
RUN apt-get clean
