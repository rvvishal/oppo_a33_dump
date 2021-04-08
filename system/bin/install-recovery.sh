#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:13180204:3192d782f8f0fb9ecb25498f3694759f6159d79b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:10212648:fd1eb475a209b4900111b076f807dfa1435865fc EMMC:/dev/block/bootdevice/by-name/recovery 3192d782f8f0fb9ecb25498f3694759f6159d79b 13180204 fd1eb475a209b4900111b076f807dfa1435865fc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
