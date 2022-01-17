#!/bin/bash

vfio-bind 0000:07:00.0 0000:07:00.1

qemu-system-x86_64 \
    -enable-kvm -m 4096 -cpu host,kvm=off \
    -smp 4,sockets=1,cores=2,threads=2 \
 \
    -device vfio-pci,host=07:00.0,x-vga=on -device vfio-pci,host=07:00.1 \
    -vga none \
 \
    -usb -device usb-host,vendorid=0x1038,productid=0x1361 \
 \
    -drive file=~root/IOMMU.img,id=hd,format=raw,if=none \
    -device ide-hd,bus=ide.1,drive=hd \
    -boot order=dc \
 \
    -drive file=~dan/W10X64.6in1.ESD.en-US.July2016.ISO,format=raw,id=virtiocd,if=none \
    -device ide-cd,bus=ide.1,drive=virtiocd
