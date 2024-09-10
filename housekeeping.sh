#!/bin/bash

#validate the disk usage in /home mount

retention_policy=1
log_dir="/home/ec2-user/"
file_pattern="*01.log"
echo "Housekeeping started"
cd $log_dir
gzip $file_pattern

checkusage() {
	df -kh $log_dir
}

checkusage
echo "Housekeeping completed"
