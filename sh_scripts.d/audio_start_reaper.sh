#!/bin/sh

# #############################################
# Start Reaper with specific cores and priority
# #############################################


priority=90
cpus="4-7"
path_to_reaper="/home/raf/opt/REAPER/reaper"


start_reaper () {
	chrt --fifo $priority \
		taskset --cpu-list $cpus \
		$path_to_reaper \
		&
}


start_reaper
