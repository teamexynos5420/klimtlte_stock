#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7802880:b6b6cfa761a2499a6189cc36879687e0366e9fa1; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7591936:f200e543675c3061d7702c0b8c8b74dc7940f02d EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY b6b6cfa761a2499a6189cc36879687e0366e9fa1 7802880 f200e543675c3061d7702c0b8c8b74dc7940f02d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
