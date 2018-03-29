#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 25165824 1f8d7a707eadd8abb697d0d10734479dfb9f5002 19449856 a28ed37f964f9286509cb08b3e7467bf4a0d0471
fi
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:25165824:1f8d7a707eadd8abb697d0d10734479dfb9f5002; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:19449856:a28ed37f964f9286509cb08b3e7467bf4a0d0471 EMMC:/dev/block/bootdevice/by-name/recovery 1f8d7a707eadd8abb697d0d10734479dfb9f5002 25165824 a28ed37f964f9286509cb08b3e7467bf4a0d0471:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
