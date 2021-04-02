#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8607744:0087b8d1093384bdcf958e2fd75f93534a58d425; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:8114176:f61cecc4e275dcb25296329369b4c3df7a241075 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 0087b8d1093384bdcf958e2fd75f93534a58d425 8607744 f61cecc4e275dcb25296329369b4c3df7a241075:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
