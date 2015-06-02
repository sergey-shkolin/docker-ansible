FROM ubuntu:14.04
MAINTAINER Sergey Shkolin <sergey.shkolin@me.com>
RUN apt-get update && \
    apt-get install --no-install-recommends -y software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install --no-install-recommends -y ansible

RUN echo "[local]\nlocalhost\n" > /etc/ansible/hosts

ENTRYPOINT [ "ansible-playbook" ]

