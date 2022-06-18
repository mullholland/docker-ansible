FROM python:3.10-slim

LABEL maintainer="mullholland"
LABEL build_update="2022-06-18"

ARG DEBIAN_FRONTEND=noninteractive

ENV container docker

RUN apt-get update \
    && apt-get install -y \
       python3-pip \
       sshpass \
       git \
       openssh-client \
       libhdf5-dev \
       libssl-dev \
       libffi-dev \
       libyaml-dev \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

COPY requirements.txt /opt

RUN pip3 install --upgrade pip \
    && pip install -r /opt/requirements.txt \
    && rm -rf /root/.cache/pip

RUN mkdir /ansible && \
  mkdir -p /etc/ansible && \
  echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible

CMD [ "ansible-playbook", "--version" ]
