# INSTALL PAQUETES REQUERIDOS

sudo yum install epel-release

sudo yum update -y

sudo yum install gcc gcc-c++ openssl-devel bzip2-devel


# INSTALL PYTHON 3.6 

sudo yum install python36 python36-devel python36-setuptools python36-tools

sudo yum install elfutils-libelf-devel libpcap-devel cmake glibc-static qemu telnet putty

sudo yum install qt5-qtbase qt5-qtbase-devel qt5-qtsvg qt5-qtsvg-devel

curl https://bootstrap.pypa.io/get-pip.py | sudo python3.6


# INSTALL GNS3 GUI AND SERVER

sudo pip3.6 install gns3-server

sudo pip3.6 install gns3-gui


# INSTALL SIP

sudo pip3.6 install sip

# INSTALL PyQt5 for GNS3

sudo pip3.6 install pyqt5

# INSTALL DYNAMIPS

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


# INSTALL UBRIDGE

cd /tmp

git clone https://github.com/GNS3/ubridge.git

cd ubridge

make

sudo make install


# INSTALL VPCS

cd /tmp

sudo yum install svn -y

svn checkout http://svn.code.sf.net/p/vpcs/code/trunk vpcs

cd vpcs/src

./mk.sh 64

sudo install -m 755 vpcs /usr/local/bin


# INSTALL WIRESHARK

sudo yum install wireshark-gnome


# INSTALL VIRTUALBOX , download rpm vbox from www.oracle.com

or

# FROM REPO

sudo vi /etc/yum.repos.d/virtualbox.repo

[virtualbox]

name=Oracle Linux / RHEL / CentOS-$releasever / $basearch - VirtualBox

baseurl=http://download.virtualbox.org/virtualbox/rpm/el/$releasever/$basearch

enabled=1

gpgcheck=1

repo_gpgcheck=1

gpgkey=https://www.virtualbox.org/download/oracle_vbox.asc


sudo yum install kernel-headers kernel-devel -y

sudo yum install VirtualBox-5.2 (FROM REPO)

sudo yum install VirtualBox-5.2-5.2.6_120293_el7-1.x86_64.rpm -y (FROM RPM FILE)

sudo systemctl enable vboxadd

# GNS3 APP in the MENU

copy gns3.desktop to /usr/share/applications


cat /usr/share/applications/gns3.desktop

[Desktop Entry]

Name=GNS3

Comment=Graphical Network Simulator

Exec=gns3

Terminal=false

Type=Application

StartupNotify=true

Icon=/home/jherrera/GNS3/symbols/gns3.ico

Categories=Development;

MimeType=application/x-gns3;



# IOU SUPPORT

chmod +x i86bi_linux-adventerprisek9-ms.155-2.T.bin_mar26_2015

chmod +x keygen.py

sudo yum install libstdc++.i686 -y



# this next step is needed to work keygen.py script

sudo vi /etc/hosts

127.0.0.1 KVM-VHOST



#  GENERATE IOU KEY

./keygen.py



# CREATE iourc file

vi iourc

[license]

KVM-VHOST = eefd6ab1420ef8fb;


# configure gns3 to use IOS and IOU images.


if you wish to watch the steps please check this from youtube

 

Part 1

https://www.youtube.com/watch?v=2SrXSAvPCB4 

Part 2

https://www.youtube.com/watch?v=3D-g8arn4XU

 

THanks,

Jh0n

