#!/bin/bash

LAPIP=$1

wget -O - http://debian.neo4j.org/neotechnology.gpg.key | apt-key add -

echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list

apt-get -y update
#no password prompt while installing neo4j server
export DEBIAN_FRONTEND=noninteractive

#install java
sudo apt-get install -y python-software-properties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

#install neo4j server
sudo apt-get -y install neo4j


