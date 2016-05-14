FROM debian:jessie

RUN apt-get update
RUN apt-get install -y python-minimal
RUN echo "export TERM=xterm" >> /etc/bash.bashrc
RUN mkdir -p /root/.ssh
ADD id_rsa /root/.ssh/id_rsa
RUN chmod 700 /root/.ssh/id_rsa
RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config
EXPOSE 80
CMD ["/code/dockermachine/base-vm/entrypoint.sh"]
