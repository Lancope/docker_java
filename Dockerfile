FROM debian:wheezy

ENV LAST_APT_JAVA_FETCH 20141030

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/java.sources.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/java.sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
# RUN apt-get update -o Dir::Etc::sourcelist="sources.list.d/java.sources.list" -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0"
RUN apt-get update
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | /usr/bin/debconf-set-selections
RUN apt-get install -yq oracle-java8-installer
RUN apt-get clean
