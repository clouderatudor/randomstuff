# Lsyncd
1. Lua config file, all filenames between quotes, all lines end with commas
except the last.
1. Maxdelays parameter - copy is only happening if the timeout is out or if more
    than maxdelays files are changed. The default value is high (thousands?), we
    need to have it changed to 1.
1. New files are copied immediately
1. The rsyncssh does not means that it will use ssh to copy the files, it will use
    ssh to handle the files on the target node.
1. It has to have rsync on the other side
1. Maybe it can be forced to use ssh but it needs coding in Lua. 
1. Every target needs a new “sync” block, which is fine with ansible.
1. Status file, which is kind of fancy, but we don’t really need it

#Inosync
1. Python
1. Badly written, misdocumented, simple, does the job.
1. Not much flexibility.

#Hack
1. Endless flexibility on targets
1. Possible harder to log it, but logger helps us
1. No need to install stuff

