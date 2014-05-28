#!/bin/bash
mkdir -p /data/cloudera
chmod 777 -R /data/cloudera

cd /opt
if [[ ! -L "/opt/cloudera" && ! -d "/opt/cloudera" ]]
then
    ln -s /data/cloudera cloudera
fi
cd -
