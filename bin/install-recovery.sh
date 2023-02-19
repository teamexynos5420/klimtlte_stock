#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8546304:6f641ec1ba2078a5f704edbd8a0cda79c24db92c; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:8058880:2228c411b7c0d49fc5e9992272f5fb36f4cc3e97 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 6f641ec1ba2078a5f704edbd8a0cda79c24db92c 8546304 2228c411b7c0d49fc5e9992272f5fb36f4cc3e97:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
