# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers
# modified by GalaticStryder for Lambda Kernel

properties() {
kernel.string=Lambda Kernel Fallback
kernel.version=FALLBACK 12-31-1969
do.devicecheck=0
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=
device.name2=
device.name3=
device.name4=
device.name5=
}

block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;

. /tmp/anykernel/tools/ak2-core.sh;

chmod -R 750 $ramdisk/*;
chown -R root:root $ramdisk/*;

dump_boot;

write_boot;
