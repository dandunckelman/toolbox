FROM ubuntu:trusty
MAINTAINER Dan Dunckel <dan@techaccelerator.com>
RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get -y install ca-certificates wget && \
  wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb && \
  dpkg -i puppetlabs-release-trusty.deb && \
  rm puppetlabs-release-trusty.deb && \
  echo "deb http://deb.theforeman.org/ trusty 1.8" | tee /etc/apt/sources.list.d/foreman.list && \
  echo "deb http://deb.theforeman.org/ plugins 1.8" | tee -a /etc/apt/sources.list.d/foreman.list && \
  wget -q http://deb.theforeman.org/pubkey.gpg -O- | apt-key add - && \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get -y install foreman-installer
