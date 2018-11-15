# GNS3 Installer Scripts for Centos-7

Tested and working on Centos-7 minimum version !

## Warning


What's included
---------------
* dynamips
* iouyap
* gns3-server
* gns3-gui
* vpcs
* virtualbox
* wireshark

Installation steps
------------------
#####AIO (GNS3 full installation)

```bash
# git clone https://github.com/NileshChandekar/gns3-for-centos7.git
# cd gns3-for-centos7
# cd script
```

echo "===================================================="
echo "#############   GNS-FOR-CENTOS-7   #################"
echo "===================================================="

~~~
./install_gns_centos_7.sh
~~~

echo "===================================================="
echo "#############   GUI-FOR-CENTOS-7   #################"
echo "===================================================="

~~~
./install_gui_centos_7.sh
~~~

echo "===================================================="
echo "#############   VNC-FOR-CENTOS-7   #################"
echo "===================================================="

This will only install packages. 
~~~
./install_vnc_centos_7.sh
~~~

# Create geometry , Enter any password 6 character long. 

~~~
sudo /usr/bin/vncserver :1 -geometry 1800x1200 -depth 24       
~~~

