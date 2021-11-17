FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-devel

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install \
        libsm6 \
        libxext6 \
        libxrender-dev \
        rsync \
        git \
        curl \
        tmux \
        vim \
        htop \
        unzip

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
