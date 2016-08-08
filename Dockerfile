FROM ruby:2.3.1-slim

MAINTAINER Martin Samami <martin@digitalkookie.io>

ENV OPENCV_VERSION=2.4.13

RUN apt-get update \
	&& apt-get upgrade -y \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y \
		unzip wget build-essential \
		cmake git pkg-config libswscale-dev \
		python3-dev python3-numpy \
		libtbb2 libtbb-dev libjpeg-dev \
		libpng-dev libtiff-dev libjasper-dev \
  && rm -rf /var/lib/apt/lists/*

RUN cd \
	&& wget https://github.com/Itseez/opencv/archive/$OPENCV_VERSION.zip \
	&& unzip $OPENCV_VERSION.zip \
	&& cd opencv-$OPENCV_VERSION \
	&& mkdir build \
	&& cd build \
	&& cmake .. \
	&& make -j3 \
	&& make install \
	&& cd \
	&& rm $OPENCV_VERSION.zip \
  && rm -rf opencv-$OPENCV_VERSION
