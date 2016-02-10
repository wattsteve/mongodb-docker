FROM fedora:latest
MAINTAINER swatt@redhat.com

COPY mongodb.repo /etc/yum.repos.d/

RUN dnf -y update
RUN dnf install -y mongodb-org
RUN dnf clean all

CMD service mongod start

EXPOSE 27017
