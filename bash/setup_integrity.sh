#!/usr/bin/env bash

echo 'setup jdk path on vm1'
ssh root@vm1 "grep 'jdk' ~/.bash_profile > /dev/null || echo  'PATH=$PATH:/usr/java/jdk1.7.0_45-cloudera/bin/' >> ~/.bash_profile"

echo 'setup jdk path on vm2'
ssh root@vm2 "grep 'jdk' ~/.bash_profile > /dev/null || echo  'PATH=$PATH:/usr/java/jdk1.7.0_45-cloudera/bin/' >> ~/.bash_profile"

echo 'setup jdk path on vm3'
ssh root@vm3 "grep 'jdk' ~/.bash_profile > /dev/null || echo  'PATH=$PATH:/usr/java/jdk1.7.0_45-cloudera/bin/' >> ~/.bash_profile"

echo 'setup jdk path on vm4'
ssh root@vm4 "grep 'jdk' ~/.bash_profile > /dev/null || echo  'PATH=$PATH:/usr/java/jdk1.7.0_45-cloudera/bin/' >> ~/.bash_profile"


