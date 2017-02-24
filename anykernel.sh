# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# EDIFY properties
kernel.string=HTC 10 LineageOS EAS tabp0le Kernel by tabp0le
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
remove_line init.rc "    mkdir /dev/stune/system-background"
remove_line init.rc "    chown system system /dev/stune/system-background"
remove_line init.rc "    chown system system /dev/stune/system-background/tasks"
remove_line init.rc "    chmod 0664 /dev/stune/system-background/tasks"
remove_line init.rc "    mkdir /dev/cpu-set/system-background"
remove_line init.rc "    write /dev/cpu-set/system-background/cpus 0"
remove_line init.rc "    write /dev/cpu-set/system-background/mems 0"
remove_line init.rc "    chown system system /dev/cpuset/system-background"
remove_line init.rc "    chown system system /dev/cpuset/system-background/tasks"
remove_line init.rc "    chmod 0775 /dev/cpuset/system-background"
remove_line init.rc "    chmod 0664 /dev/cpuset/system-background/tasks"

# end ramdisk changes

write_boot;

## end install

