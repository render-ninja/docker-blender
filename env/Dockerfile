FROM ubuntu:18.04

LABEL authors="Joao Neto <joao@neto.pt>"

# install required dependencies
RUN apt-get update
RUN apt-get install -y libglu1 libxi-dev libxrender-dev curl

WORKDIR /opt/
RUN curl -SL https://ftp.nluug.nl/pub/graphics/blender/release/Blender2.80/blender-2.80-linux-glibc217-x86_64.tar.bz2 -o blender.tar.bz2
RUN mkdir blender
RUN tar xjf blender.tar.bz2 -C blender --strip-components=1
RUN rm -f blender.tar.bz2

COPY run-blender.sh /opt/run-blender.sh

ENTRYPOINT ["/opt/run-blender.sh"]
