FROM openjdk:8

LABEL maintainer="Gisaïa Team" \
      version="1.2.7_jdk8" \
      description="sbt docker image"

ENV SBT_VERSION 1.2.7

RUN \
  curl -L -o sbt-$SBT_VERSION.deb http://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  rm sbt-$SBT_VERSION.deb && \
  apt-get update && \
  apt-get install sbt && \
  sbt sbtVersion

WORKDIR /opt/work
