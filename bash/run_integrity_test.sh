#!/usr/bin/env bash

ssh root@vm1 /usr/java/jdk1.7.0_45-cloudera/bin/jps > jps_vm1.log
echo '-------------------'
echo 'checking vm1'
echo 'checking Zookeeper(QuorumPeerMain) ' && grep -q QuorumPeerMain jps_vm1.log && echo 'ok'
echo 'checking JournalNode ' && grep -q JournalNode jps_vm1.log && echo 'ok'
echo 'checking NameNode ' && grep -q NameNode jps_vm1.log && echo 'ok'
echo 'checking NodeManager ' && grep -q NodeManager jps_vm1.log && echo 'ok'
echo 'checking HMaster ' && grep -q HMaster jps_vm1.log && echo 'ok'

ssh root@vm2 /usr/java/jdk1.7.0_45-cloudera/bin/jps > jps_vm2.log
echo '-------------------'
echo 'checking vm2'
echo 'checking Zookeeper(QuorumPeerMain) ' && grep -q QuorumPeerMain jps_vm2.log && echo 'ok'
echo 'checking JournalNode ' && grep -q JournalNode jps_vm2.log && echo 'ok'
echo 'checking NameNode ' && grep -q NameNode jps_vm2.log && echo 'ok'
echo 'checking ResourceManager ' && grep -q ResourceManager jps_vm2.log && echo 'ok'
echo 'checking HMaster ' && grep -q HMaster jps_vm2.log && echo 'ok'

ssh root@vm3 /usr/java/jdk1.7.0_45-cloudera/bin/jps > jps_vm3.log
echo '-------------------'
echo 'checking vm3'
echo 'checking Zookeeper(QuorumPeerMain) ' && grep -q QuorumPeerMain jps_vm3.log && echo 'ok'
echo 'checking JournalNode ' && grep -q JournalNode jps_vm3.log && echo 'ok'
echo 'checking DataNode ' && grep -q DataNode jps_vm3.log && echo 'ok'
echo 'checking NodeManager ' && grep -q NodeManager jps_vm3.log && echo 'ok'
echo 'checking HRegionServer ' && grep -q HRegionServer jps_vm3.log && echo 'ok'

ssh root@vm4 /usr/java/jdk1.7.0_45-cloudera/bin/jps > jps_vm4.log
echo '-------------------'
echo 'checking vm4'
echo 'checking Zookeeper(QuorumPeerMain) ' && grep -q QuorumPeerMain jps_vm4.log && echo 'ok'
echo 'checking JournalNode ' && grep -q JournalNode jps_vm4.log && echo 'ok'
echo 'checking DataNode ' && grep -q DataNode jps_vm4.log && echo 'ok'
echo 'checking NodeManager ' && grep -q NodeManager jps_vm4.log && echo 'ok'
echo 'checking HRegionServer ' && grep -q HRegionServer jps_vm4.log && echo 'ok'
