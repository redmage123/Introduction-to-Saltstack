#!/bin/bash

/usr/bin/apt-get update 
echo "" ## This echos an empty line and is required
echo "changed=yes comment='apt-get update executed successfully'"

echo "" ## This echos an empty line and is required
echo "changed=no comment='apt-get update failed to execute'"
