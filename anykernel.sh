# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup

# begin properties
properties() {
kernel.string=HTC 10 EAS Enablement by tabp0le

do.devicecheck=1
do.initd=0
do.scripts=0
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=htc_pmewl
device.name2=htc_pmeuhl
device.name3=htc_pmewhl

} # end properties

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


# fstab
backup_file fstab.qcom;


# end ramdisk changes

write_boot;

## end install

