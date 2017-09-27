# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers
# modified by GalaticStryder for Lambda Kernel

properties() {
do.devicecheck=1
do.cleanup=1
do.cleanuponabort=1
device.name1=le_zl1
device.name2=
device.name3=
device.name4=
device.name5=
}

block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;

. /tmp/anykernel/tools/ak2-core.sh;
chmod -R 755 $ramdisk

dump_boot;

write_boot;
