#!/bin/bash
sudo cp monetdb.list /etc/apt/sources.list.d/monetdb.list
wget --output-document=- https://www.monetdb.org/downloads/MonetDB-GPG-KEY | sudo apt-key add -
sudo apt-get update
sudo apt-get install monetdb5-sql monetdb-client
sudo usermod -a -G monetdb $USER

