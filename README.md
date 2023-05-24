# disco_virtual

	The need to automate the startup of a virtual disk me
	led to writing this script which automatically mounts in the folder at
	that it is a link to a temporary folder where the RAMDISK is mounted
	with desired size in parameter (Megas m, Gigas G) in fedora

1 ) check if the /tmp/ramdisk folder exists, if not, create it!

2 ) mounts partition in RAM

3 ) link ramdisk -> /tmp/ramdisk



ex: # sh monta_ramdisk.sh 1024m popdisk


# ramdisk write speed test
$ dd if=/dev/zero of=/tmp/ramdisk/zero bs=4k count=100000

# ramdisk read speed test
$ dd if=/tmp/ramdisk/zero of=/dev/null bs=4k count=100000

# RAM read speed test
# sysbench --test=memory --memory-block-size=1M --memory-total-size=10G run
	
											04/2023
