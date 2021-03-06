#!/bin/bash -e 

MEM_VERSION=1.4.31
LIB_VERSION=1.0.18

echo "================= Installing MemCached Prereqs ==================="
sudo apt-get install -y libevent-dev

# Add memcache user to run the daemon later
sudo groupadd -r memcache
sudo useradd -r -g memcache memcache

echo "================= Installing MemCached ==================="
sudo wget http://memcached.org/files/memcached-1.4.31.tar.gz
sudo tar xzf memcached-1.4.31.tar.gz && cd memcached-1.4.31
sudo ./configure
sudo make && sudo make install
cd .. && sudo rm -rf memcached-1.4.31 && sudo rm -f memcached-1.4.31.tar.gz


echo "================= Installing LibMemCached ==================="
sudo wget https://launchpad.net/libmemcached/1.0/$LIB_VERSION/+download/libmemcached-$LIB_VERSION.tar.gz
sudo tar xzf libmemcached-$LIB_VERSION.tar.gz && cd libmemcached-$LIB_VERSION
sudo ./configure
sudo make && sudo make install
cd .. && sudo rm -rf libmemcached-$LIB_VERSION && sudo rm -f libmemcached-$LIB_VERSION.tar.gz
sudo ldconfig
