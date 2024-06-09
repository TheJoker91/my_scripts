#!/bin/bash
# Author: Idriss B
# Description: Basic Apache installation on Centos
# Date: 4/7/24

yum install httpd -y
if [ $? -eq 0 ]
then
echo "Apache has been successfuly downloaded"
else
echo "Apache failed to download"
fi

sleep 5

systemctl start httpd
systemctl enable httpd
systemctl status httpd

if [ $? -eq 0 ]
then
echo "The Apache daemon is running properly"
else
echo "Apache is not ready on this machine"
fi
