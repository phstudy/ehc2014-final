#!/bin/bash
cd /root/EHC_2014_Final/disk2/centos_repo/centos/6.5
rpm -Uvh ./updates/x86_64/Packages/httpd-tools-2.2.15-30.el6.centos.x86_64.rpm \
./updates/x86_64/Packages/httpd-2.2.15-30.el6.centos.x86_64.rpm \
./updates/x86_64/Packages/openssl-devel-1.0.1e-16.el6_5.7.x86_64.rpm \
./updates/x86_64/Packages/openssl-1.0.1e-16.el6_5.7.x86_64.rpm \
./os/x86_64/Packages/apr-1.3.9-5.el6_2.x86_64.rpm \
./os/x86_64/Packages/apr-util-1.3.9-3.el6_0.1.x86_64.rpm \
./os/x86_64/Packages/mailcap-2.1.31-2.el6.noarch.rpm \
./os/x86_64/Packages/apr-util-ldap-1.3.9-3.el6_0.1.x86_64.rpm 
cd -

service httpd start
chkconfig httpd on

cd /var/www/html 
if [[ ! -L "/var/www/html/cdh5" && ! -d "/var/www/html/cdh5" ]]
then
    ln -s /root/EHC_2014_Final/disk2/centos_repo/cdh5 cdh5
    ln -s /root/EHC_2014_Final/disk2/centos_repo/cm5 cm5
    ln -s /root/EHC_2014_Final/disk2/centos_repo/centos centos
    ln -s /root/EHC_2014_Final/disk2/centos_repo/redhat redhat
fi

cd -

#mkdir -p /data1/cloudera
#cd /opt
#if [[ ! -L "/opt/cloudera" && ! -d "/opt/cloudera" ]]
#then
#    ln -s /data/cloudera cloudera
#fi
#cd -
