mkdir -p /dev/bluetooth/rfcomm
mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
mknod --mode=666 /dev/rfcomm0 c 216 0
hciconfig hci0 up
hcitool scan 
