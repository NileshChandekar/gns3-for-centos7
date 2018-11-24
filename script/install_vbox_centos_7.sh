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



