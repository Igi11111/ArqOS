#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="arqos"
iso_label="ARQ_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
<<<<<<< HEAD
iso_publisher="ArqOS Linux <https://igi11111.github.io/ArqOS/>"
=======
iso_publisher="ArqOS Linux <https://archlinux.org>"
>>>>>>> 68905857b8097a3b308e6d0d97b5f5563145ff09
iso_application="ArqOS live"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux'
           'uefi.systemd-boot')
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
<<<<<<< HEAD
mkdir -p ~/arqos/releng/airootfs/etc/skel/.config
cat > ~/arqos/releng/airootfs/etc/skel/.config/kdeglobals << 'EOF'
[Wallpaper]
Image=/usr/share/wallpapers/Arq_default.jpg
EOF
=======
>>>>>>> 68905857b8097a3b308e6d0d97b5f5563145ff09
