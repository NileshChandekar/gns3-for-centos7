#!/bin/bash
#  Author / Maintainer : Nilesh Chandekar ncredhat@gmail.com
#
# 
# Licenced under GPLv3, check LICENSE.txt
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

#!/bin/bash


echo "===================================================="
echo "#############   GNS-FOR-CENTOS-7   #################"
echo "===================================================="

echo "========================================================="
echo "#############   INSTALL PRE-REQUISITE   #################"
echo "========================================================="

sudo yum install epel-release -y
sudo yum update -y
sudo yum install gcc gcc-c++ openssl-devel bzip2-devel -y 

sleep 5
clear

echo "======================================================"
echo "#############   INSTALL PYTHON 3.6   #################"
echo "======================================================"

sudo yum install python36 python36-devel python36-setuptools python36-tools -y
sudo yum install elfutils-libelf-devel libpcap-devel cmake glibc-static qemu telnet putty -y
sudo yum install qt5-qtbase qt5-qtbase-devel qt5-qtsvg qt5-qtsvg-devel -y
curl https://bootstrap.pypa.io/get-pip.py | sudo python3.6

sleep 5
clear

echo "==============================================================="
echo "#############   INSTALL GNS3 GUI AND SERVER   #################"
echo "==============================================================="

sudo /usr/local/bin/pip3.6  install gns3-server
sudo /usr/local/bin/pip3.6  install gns3-gui


sleep 5
clear

echo "==============================================="
echo "#############   INSTALL SIP   #################"
echo "==============================================="

sudo /usr/local/bin/pip3.6  install sip

sleep 5
clear

echo "=========================================================="
echo "#############   INSTALL PyQt5 for GNS3   #################"
echo "=========================================================="

sudo /usr/local/bin/pip3.6  install pyqt5


sleep 5
clear

echo "===================================================="
echo "#############   INSTALL DYNAMIPS   #################"
echo "===================================================="

cd /tmp
sudo yum install git cmake -y
sudo yum install elfutils-libelf-devel libpcap-devel cmake glibc-static qemu -y
git clone https://github.com/GNS3/dynamips.git
cd dynamips/
mkdir build
cd build/
cmake .. -DDYNAMIPS_CODE=stable
make
sudo make install
cd /

sleep 5
clear

echo "==================================================="
echo "#############   INSTALL UBRIDGE   #################"
echo "==================================================="

cd /tmp
git clone https://github.com/GNS3/ubridge.git
cd ubridge
make
sudo make install
cd /

sleep 5
clear

echo "================================================"
echo "#############   INSTALL VPCS   #################"
echo "================================================"

cd /tmp
sudo yum install svn -y
svn checkout http://svn.code.sf.net/p/vpcs/code/trunk vpcs
cd vpcs/src
./mk.sh 64
sudo install -m 755 vpcs /usr/local/bin
cd /


sleep 5
clear

echo "====================================================="
echo "#############   INSTALL WIRESHARK   #################"
echo "====================================================="

sudo yum install wireshark-gnome -y


sleep 5
clear

echo "=========================================================="
echo "#############   CREATE VIRTUALBOX REPO   #################"
echo "=========================================================="

yum -y install wget
cd /tmp
wget https://www.virtualbox.org/download/oracle_vbox.asc
rpm --import oracle_vbox.asc
wget http://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -O /etc/yum.repos.d/virtualbox.repo


sleep 5
clear

echo "======================================================="
echo "#############   INSTALL VIRTUALBOX    #################"
echo "======================================================="

sudo yum install kernel-headers kernel-devel -y
sudo yum install VirtualBox-5.2 -y 
sudo systemctl enable vboxdrv



sleep 5
clear

echo "================================================"
echo "#############   IOU SUPPORT    #################"
echo "================================================"


sudo yum install libstdc++.i686 -y

