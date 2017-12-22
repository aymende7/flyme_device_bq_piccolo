#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11937792 4538248fbac8242805b9dc37b3a94d84c3fc0b7e 9422848 117ea52f7d96cb3dcf00aed982bdbbd1f8da0eb8
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:11937792:4538248fbac8242805b9dc37b3a94d84c3fc0b7e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:9422848:117ea52f7d96cb3dcf00aed982bdbbd1f8da0eb8 EMMC:/dev/block/bootdevice/by-name/recovery 4538248fbac8242805b9dc37b3a94d84c3fc0b7e 11937792 117ea52f7d96cb3dcf00aed982bdbbd1f8da0eb8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
