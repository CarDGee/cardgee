**CarDGee gentoo overlay    
A collection of ebuilds for my own personal use not available on portage tree.    
There is no support whatsoever, but if you find a bug, please file an issue.**    

Installation

1. Add a new file to /etc/portage/repos.conf.d/ with the following contents:

[cardgee]

location = /var/db/repos/cardgee   
sync-type = git   
sync-uri = https://github.com/CarDGee/cardgee.git   
priority = 50   
auto-sync = Yes
