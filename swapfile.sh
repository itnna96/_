#ref. https://askubuntu.com/a/1075516/22308

sudo swapoff /swapfile # make all swap off
sudo rm -rf /swapfile # remove the current

#                           8Gb = 8 * 1024Mb = 8192 Mb
#                           4Gb = 4 * 1024Mb = 4096 Mb
sudo dd if=/dev/zero of=/swapfile bs=1M count=4096 # resize the swapfile to 4Gb
#                                            =

sudo chmod 600 /swapfile

sudo mkswap /swapfile # format the file as swap

sudo swapon /swapfile # activate it
sudo swapon -s        # view swap size
