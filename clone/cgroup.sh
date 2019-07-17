#!/bin/bash


PROCESS_PID="12095"
CGROUPNAME="demo"

#sudo mkdir -p /sys/fs/cgroup/memory/${CGROUPNAME}
echo 50000000 > /sys/fs/cgroup/memory/${CGROUPNAME}/memory.limit_in_bytes
echo ${PROCESS_PID} > /sys/fs/cgroup/memory/${CGROUPNAME}/cgroup.procs
ps -o cgroup ${PROCESS_PID}
cat /sys/fs/cgroup/memory/${CGROUPNAME}/memory.usage_in_bytes





echo 1 > /sys/fs/cgroup/memory/${CGROUPNAME}/memory.limit_in_bytes



