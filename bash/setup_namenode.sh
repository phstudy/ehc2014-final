#!/usr/bin/env bash
HDFS_SITE_PATH=/etc/hadoop/conf/hdfs-site.xml

echo 'rename namenode73 to vm1 on vm1'
echo 'rename namenode76 to vm2 on vm1'
ssh root@vm1 "sed -i 's/namenode73/vm1/g' ${HDFS_SITE_PATH}"
ssh root@vm1 "sed -i 's/namenode76/vm2/g' ${HDFS_SITE_PATH}"

echo 'rename namenode73 to vm1 on vm2'
echo 'rename namenode76 to vm2 on vm2'
ssh root@vm2 "sed -i 's/namenode73/vm1/g' ${HDFS_SITE_PATH}"
ssh root@vm2 "sed -i 's/namenode76/vm2/g' ${HDFS_SITE_PATH}"

echo 'rename namenode73 to vm1 on vm3'
echo 'rename namenode76 to vm2 on vm3'
ssh root@vm3 "sed -i 's/namenode73/vm1/g' ${HDFS_SITE_PATH}"
ssh root@vm3 "sed -i 's/namenode76/vm2/g' ${HDFS_SITE_PATH}"

echo 'rename namenode73 to vm1 on vm4'
echo 'rename namenode76 to vm2 on vm4'
ssh root@vm4 "sed -i 's/namenode73/vm1/g' ${HDFS_SITE_PATH}"
ssh root@vm4 "sed -i 's/namenode76/vm2/g' ${HDFS_SITE_PATH}"