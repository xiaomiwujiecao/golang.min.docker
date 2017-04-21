FROM xiaomiwujiecao/min.ubuntu.docker:latest
MAINTAINER Little Mouse
ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH
ENV GOROOT /usr/local/go
ENV PATH $GOROOT/bin:$PATH
ENV VERSION 1.8.1
ENV OS linux
ENV ARCH amd64
ENV DEPEDIENCES curl tar zip
RUN apt-get update\
&& apt-get install $DEPEDIENCES -y \
&& curl -O https://storage.googleapis.com/golang/go1.8.1.linux-amd64.tar.gz \
&& tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz  \
