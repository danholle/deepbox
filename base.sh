#!/bin/bash

#############################
#                           #
#  Base setup for Deep Box  #
#                           #
#############################
 
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install -y linux-image-extra-virtual
sudo apt-get install -y dkms build-essential linux-headers-generic apt-show-versions
sudo apt-get install -y openssh-server openmpi-bin chromium-browser gir1.2-gtop-2.0

# Compilers & libraries 
sudo apt-get install -y openjdk-8-jdk
sudo apt-get install -y maven
sudo apt-get install -y gcc g++ gfortran cmake linux-image-generic pkg-config 
sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev 
sudo apt-get install -y protobuf-compiler llibopencv-dev libcupti-dev
sudo apt-get install -y --no-install-recommends libboost-all-dev
sudo apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev libblas-dev 
sudo apt-get install -y libatlas-base-dev libopenblas-dev 

# python3 stuff
sudo apt-get install -y python3-dev python3-pip
sudo apt-get install -y python3-nose python3-numpy python3-scipy
sudo -H pip3 install --upgrade pip
sudo -H pip3 install numpy scipy scikit-learn protobuf

# Gnome tweaks for Stuff for remote desktop
gsettings set org.gnome.Vino enabled true
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.vino require-encryption false
gsettings set org.gnome.desktop.wm.preferences button-layout close,minimize,maximize:

