#!/bin/bash -e

VERSION=2.4.0

echo "================= Installing ElasticSearch 2.4.0 ==================="
curl -L -O https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.4.0/elasticsearch-2.4.0.tar.gz
sudo tar -xvf elasticsearch-2.4.0.tar.gz -C /usr/local && sudo rm -f elasticsearch-2.4.0.tar.gz
sudo ln -s /usr/local/elasticsearch-2.4.0/bin/elasticsearch /usr/local/bin/elasticsearch
