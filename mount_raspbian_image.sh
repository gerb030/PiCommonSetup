# check which image to load. It will be marked with filesystem Linux
diskutil list
# create a new mount point as root
sudo mkdir /Volumes/raspberry 
# mount the drive
sudo ext4fuse /dev/disk2s2 /Volumes/raspberry -o allow_other