
# ***deepbox***

## **Installing GPU Hardware & Software**

WARNING:  This is not ready to consume!  Published because I am testing the published version.

-------

From a hardware perspective, installing the GTX 1050 Ti was relatively simple, but I managed
to make it a bit more complicated than I needed to.

The card needs a PCI x16 slot, and the xw6600 had a spare one.  So I thought, just leave the
old graphics card in place, and slot in the shiny new one in that spare slot.  And that way, if
I have any problems with setting up the new card, I'll have a working VGA screen to troubleshoot
with.  Simple, right?

Well, no.  I found out later that the NVIDIA drivers for the old (in fact, ancient) graphics
card were incompatible with the NVIDIA drivers for the new (in fact, brand new) 1050.  So I
replaced the old card, slotting the 1050 Ti in its place.  Simple, right?

Well, no.  The 1050 Ti doesn't have a VGA socket.  But I'd been here before using that old VGA display
with a newer desktop PC, so I rummaged through my junk box to find
a passive DVI to VGA adapter.  Simple, right?

Well, no.  The 1050 has a DVI-D (Digital) socket.  While a DVI-D to VGA adapter is possible, it requires
an active transformation.  The active adapter I got is an inline cable with a DVI-D plug on one end and a VGA
socket on the other.  Simple, right?

Well, yes, of course!  



Well, no.  The 1050 has a DVI-D (, and crossing my fingers.





 
TODO more needed here.  Talk about version compatibility and sensitivities.
Talk about how to find the right stuff on NVIDIA.
Mention the nvidia.sh script.
#!/bin/bash

# 
# Here are the names of the CUDA software we will be installing.
#
cudafilename="cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb"
cudnnfilename="cudnn-8.0-linux-x64-v6.0.tgz"

#
# If CUDA software is not present, cry foul!
#
if [ -f "$cudafilename" ]
then
  echo "Found CUDA toolkit ($cudafilename)... cool."
else
  if [ -f ~/Downloads/$cudafilename ]
  then
    echo "Moving $cudafilename to the current directory."
    mv ~/Downloads/$cudafilename .
  else
    echo " "
    echo "I couldn't find $cudafilename ..."
    echo " "
    echo "You need to download the CUDA toolkit from NVIDIA."
    echo " - Go to https://developer.nvidia.com/cuda-downloads."
    echo " - Scroll down to the bottom and click Legacy Releases."
    echo " - Select the latest CUDA 8.0 GA2 (Feb 2017)."
    echo " - Select Linux, x86_64, Ubuntu, 16.04, deb (local)."
    echo " - Go to Base Installer and click download."
    echo "Then come back here and try again."
    echo " "
    exit
  fi
fi


#
# If CUDA Deep Neural Network library is not present, cry foul!
#
if [ -f "$cudnnfilename" ]
then
  echo "Found CUDA Deep Neural Network library ($cudafilename)... cool."
else
  if [ -f ~/Downloads/$cudnnfilename ]
  then
    echo "Moving $cudnnfilename to the current directory."
    mv ~/Downloads/$cudnnfilename .
  else
    echo " "
    echo "I couldn't find $cudnnfilename ..."
    echo " "
    echo "You need to download the CUDA Deep Neural Network library from NVIDIA."
    echo " - Go to https://developer.nvidia.com/cudnn."
    echo " - Click Download, accept the terms, click on cuDNN v6.0 for CUDA 8.0."
    echo " - Click cuDNN v6.0 Library for Linux."
    echo "Then come back here and try again."
    echo " "
    exit
  fi
fi





echo "Bailing out."
exit
   
  
#
# Out with the old.  
#
sudo apt-get purge nvidia*
sudo apt-get autoremove

#
# In with the new.
#
# nvidia-384 is the stable release as of today (4 December 2017).
# You may want to check here to see if things have moved on:
#    https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa
#
sudo apt-get add-apt-repository ppa:graphics-drivers
sudo apt-get update
sudo apt-get install -y nvidia-384

#
# Ubuntu ships with open source graphics drivers (nouveau).
# These commands will keep them from messing things up.
#
sudo cp blacklist-nouveau.conf /etc/modprobe.d/
echo options nouveau modeset=0 | sudo tee -a /etc/mdprobe.d/nouveau-kms.conf
sudo update-initramfs -u

#
# Installing CUDA Toolkit 8.0
# Although 9.0 is the latest and greatest, Tensorflow 1.4 doesn't
# run with 9.0.
#
sudo dpkg -i $cudafilename
sudo apt-get update
sudo apt-get install -y cuda

#
# Similarly, Tensorflow 1.4 needs cuDNN V6.0
#
tar -xzvf $cudnnfilename
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
rm -rf cuda

#
# Update library paths
#
cat gpu/setpaths.txt >> ~/.bashrc

