#
# Regular cron jobs for the mdk3 package
#
0 4	* * *	root	[ -x /usr/bin/mdk3_maintenance ] && /usr/bin/mdk3_maintenance
