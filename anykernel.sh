# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# EDIFY properties
kernel.string=tabp0le HTC10 Lineage Kernel v1.02.9-beta
do.devicecheck=1
do.initd=0
do.scripts=0
do.modules=0
do.cleanup=1
device.name1=htc_pmewl
device.name2=htc_pmeuhl
device.name3=htc_pmewhl

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel permissions
# set permissions for included ramdisk files
chmod -R 755 $ramdisk
chmod 640 $ramdisk/fstab.qcom


## AnyKernel install
dump_boot;

# begin ramdisk changes


# end ramdisk changes

write_boot;

## end install

