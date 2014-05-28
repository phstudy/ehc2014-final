#!/usr/bin/env bash

echo 'checking vm1...'
ssh root@vm1 "echo ehc2014 | kinit hdfs"
printf 'vm1: ' && ssh root@vm1 "hdfs haadmin -getServiceState vm1"
printf 'vm2: ' && ssh root@vm1 "hdfs haadmin -getServiceState vm2"

echo 'checking vm2...'
ssh root@vm2 "echo ehc2014 | kinit hdfs"
printf 'vm1: ' && ssh root@vm2 "hdfs haadmin -getServiceState vm1"
printf 'vm2: ' && ssh root@vm2 "hdfs haadmin -getServiceState vm2"

echo 'checking vm3...'
ssh root@vm3 "echo ehc2014 | kinit hdfs"
printf 'vm1: ' && ssh root@vm3 "hdfs haadmin -getServiceState vm1"
printf 'vm2: ' && ssh root@vm3 "hdfs haadmin -getServiceState vm2"

echo 'checking vm4...'
ssh root@vm4 "echo ehc2014 | kinit hdfs"
printf 'vm1: ' && ssh root@vm4 "hdfs haadmin -getServiceState vm1"
printf 'vm2: ' && ssh root@vm4 "hdfs haadmin -getServiceState vm2"
