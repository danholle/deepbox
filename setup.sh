#!/bin/bash

# Some initial setup of our foundation box
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install -y linux-image-extra-virtual
sudo apt-get install -y dkms build-essential linux-headers-generic apt-show-versions
sudo apt-get install -y openssh-server vim git wget chromium-browser hplip-gui

mkdir ~/Pictures/wallpaper
cp denali.jpg ~/Pictures/wallpaper


# Install NVIDIA drivers, and disable evil open source ones
#sudo apt-get purge nvidia*
#sudo apt-get autoremove
#sudo apt-get add-apt-repository ppa:graphics-drivers
#sudo apt-get update
#sudo apt-get install -y nvidia-384
#sudo cp blacklist-nouveau.conf /etc/modprobe.d/
#echo options nouveau modeset=0 | sudo tee -a /etc/mdprobe.d/nouveau-kms.conf
#sudo update-initramfs -u


# Installing CUDA Toolkit 8.0
#sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
#sudo apt-get update
#sudo apt-get install -y cuda


# Install cuDNN V6.0
#tar -xzvf cudnn-8.0-linux-x64-v6.0.tgz
#sudo cp cuda/include/cudnn.h /usr/local/cuda/include
#sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
#sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
#rm -rf cuda


# Deep Learning stuff
sudo apt-get install -y gcc g++ gfortran cmake build-essential linux-image-generic
sudo apt-get install -y pkg-config
sudo apt-get install -y libcupti-dev
sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler llibopencv-dev
sudo apt-get install -y --no-install-recommends libboost-all-dev
sudo apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev libblas-dev libatlas-base-dev libopenblas-dev
sudo apt-get install -y openmpi-bin
sudo apt-get install -y python3-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python3-nose python3-numpy python3-scipy

#sudo apt-get upgrade python3-pip
sudo pip install --upgrade pip


sudo pip3 install numpy scipy scikit-learn protobuf
#sudo pip3 install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.4.0-cp35-cp35m-linux_x86_64.whl
sudo pip3 install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-1.4.0-cp35-cp35m-linux_x86_64.whl
sudo pip3 install https://cntk.ai/PythonWheel/GPU/cntk-2.1-cp35-cp35m-linux_x86_64.whl
sudo pip3 install keras
sudo pip3 install h5py psutil unidecode
sudo pip3 install http://download.pytorch.org/whl/cu80/torch-0.2.0.post3-cp35-cp35m-manylinux1_x86_64.whl
sudo pip3 install torchvision

#cat setpaths.txt >> ~/.bashrc

cd ~
mkdir gits
cd gits
git clone git://github.com/danholle/deeptext.git

sudo reboot

