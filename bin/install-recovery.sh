#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8544256:845b3e9c60319cf2c377657cd455b9d645571fcd; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:8060928:0fa60e7800b8274a2c49e30214ee93d8b5b4ee71 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 845b3e9c60319cf2c377657cd455b9d645571fcd 8544256 0fa60e7800b8274a2c49e30214ee93d8b5b4ee71:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
