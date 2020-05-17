FROM centos:latest

RUN yum -y update \
  && yum -y install openssh \
  rsync \
  git \
  php \
  && yum clean all
RUN mkdir -p ~/.ssh \
  && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
