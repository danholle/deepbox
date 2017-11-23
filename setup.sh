#!/bin/bash


###########################################################
#
#  Do these manual steps before running this script!
#  
#  Go to Settings -> Power and set "Blank Screen" to 
#  "never", otherwise your machine will lock you out
#  every time you turn around for 5 minutes... then:
#
#sudo apt-get update
#sudo apt-get install vim git
#mkdir gits
#cd gits
#git clone git://github.com/danholle/deepbox.git
#cd deepbox
#vim setup.sh
## Now edit the install script to fit the needs of this box
## then ./setup.sh and kick back!


###########################################################
#
#  Some foundational stuff
#
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install -y linux-image-extra-virtual
sudo apt-get install -y dkms build-essential linux-headers-generic apt-show-versions
sudo apt-get install -y openssh-server openjdk-8-jdk-headless openmpi-bin 
sudo apt-get install -y gcc g++ gfortran cmake linux-image-generic pkg-config 
sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev 
sudo apt-get install -y protobuf-compiler llibopencv-dev libcupti-dev
sudo apt-get install -y --no-install-recommends libboost-all-dev
sudo apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev libblas-dev 
sudo apt-get install -y libatlas-base-dev libopenblas-dev 
# Python stuff
sudo apt-get install -y python3-dev python3-pip
sudo apt-get install -y python3-nose python3-numpy python3-scipy
sudo pip3 install --upgrade pip
sudo pip3 install numpy scipy scikit-learn protobuf



###########################################################
#
#  If you are installing on a box with NVIDIA GPU hardware
#  that you want to use for deep learning...
#
#  First you need to go and get CUDA and cuDNN
#  TODO more detail needed here
#
#sudo apt-get purge nvidia*
#sudo apt-get autoremove
#sudo apt-get add-apt-repository ppa:graphics-drivers
#sudo apt-get update
#sudo apt-get install -y nvidia-384
## open source nouveau drivers mess things up... so
#sudo cp blacklist-nouveau.conf /etc/modprobe.d/
#echo options nouveau modeset=0 | sudo tee -a /etc/mdprobe.d/nouveau-kms.conf
#sudo update-initramfs -u
## Installing CUDA Toolkit 8.0
#sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
#sudo apt-get update
#sudo apt-get install -y cuda
## Install cuDNN V6.0
#tar -xzvf cudnn-8.0-linux-x64-v6.0.tgz
#sudo cp cuda/include/cudnn.h /usr/local/cuda/include
#sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
#sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
#rm -rf cuda
#cat setpaths.txt >> ~/.bashrc


###########################################################
#
# Tensorflow and friends
#
# Tensorflow:  choose GPU version, or CPU version
#sudo pip3 install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.4.0-cp35-cp35m-linux_x86_64.whl
sudo pip3 install tensorflow
sudo pip3 install keras h5py


###########################################################
#
# More Deep Learning stuff:  pytorch and cntk
#
# cntk.  choose gpu or not
#sudo pip3 install https://cntk.ai/PythonWheel/GPU/cntk-2.1-cp35-cp35m-linux_x86_64.whl
sudo pip3 install https://cntk.ai/PythonWheel/CPU-Only/cntk-2.3-cp35-linux_x86_64.whl
# pytorch:  gpu or not
#sudo pip3 install http://download.pytorch.org/whl/cu80/torch-0.2.0.post3-cp35-cp35m-manylinux1_x86_64.whl
sudo pip3 install http://download.pytorch.org/whl/cu75/torch-0.2.0.post3-cp35-cp35m-manylinux1_x86_64.whl
sudo pip3 install torchvision


###########################################################
# 
# Dan's personal stuff
#
cp -a wallpaper/ ~/Pictures/
sudo apt-get install chromium-browser hplip-gui calibre gir1.2-gtop-2.0
sudo pip3 install psutil unidecode
cd ..
git clone git://github.com/danholle/deeptext.git

sudo reboot

#
#  Post-install stuff via GUI:
#
#  1.  Left toolbar.  There is a lot of stuff there that
#      you may want to clear out.  I set it to: chromium,
#      terminal, files, settings, help.
#  2.  Remote access (SSH and remote desktop):  Settings 
#      -> Sharing. Remote Login should have been turned on
#      when you installed openssh.  Turn on Screen Sharing,
#      Allow remote control.  Require PW.  It is a max of
#      8 chars so I just use the first 8 of my logon PW.
#      Now you can SSH to this box by name, or remote 
#      desktop to it using Remmina on another Ubuntu.
#  3.  By default Gnome provides no close/min/max on app
#      windows.  Issue this command to fix:
#      gsettings set org.gnome.desktop.wm.preferences button-layout close,minimize,maximize:
#  
#  Dan-specific setup things:
# 
#  1.  Files -> Pictures -> wallpaper.  Choose one;  right
#      click;  make it background.
#  2.  Wireless printer:  Settings -> Printer.  It should 
#      find your wireless printer.  Add it and print a
#      test page.
#  3.  System monitor for the top bar.   Browse to
#      extensions.gnome.org/extension/120/system-monitor
#      Use the switch to turn it on.  Click on the tools
#      icon to customize it:  I tick all the boxes along
#      the top;  then go thru each display in turn.  I set
#      CPU, memory, net, and thermal to Display, and turn
#      all others off.  For the Display guys, I set them to
#      Digit (rather than graph).
#  4.  Setting up Dropbox.  I found the command line options
#      for this were problematic;  best to browse to 
#      dropbox.com and do it all there.
#  5.  Calibre setup
#  6.  Turn off touchpad.
#   




