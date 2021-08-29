#!/bin/bash
cd mmcv/ops/csrc
host_files=`find ./parrots -name "*cpu*"`
for i in $host_files
do 
    if [[ $i =~ hip ]]
    then
        echo $i
        sed -i '1i\#include <hip/hip_runtime.h>' $i 
    fi
done