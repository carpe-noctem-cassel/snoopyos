#!/bin/sh

qemu-system-x86_64 --enable-kvm -M pc \
-kernel output/images/bzImage \
-append 'quiet' -net nic,model=virtio -net user \
-redir tcp:2222::22 \
#-drive file=output/images/rootfs.ext2,if=virtio,format=raw \
