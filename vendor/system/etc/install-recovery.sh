#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#tony
if ! applypatch -c EMMC:recovery:5498880:5d6da656b2993fe4231845a30c738b98776dee37; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:boot:5150720:5d3c0ba074dc9b01f0ccfcddb9c46ecf5dc9e6d6 EMMC:recovery 5d6da656b2993fe4231845a30c738b98776dee37 5498880 5d3c0ba074dc9b01f0ccfcddb9c46ecf5dc9e6d6:/system/recovery-from-boot.p
  if applypatch -c EMMC:recovery:5498880:5d6da656b2993fe4231845a30c738b98776dee37; then		#tony
	echo 0 > /sys/module/sec/parameters/recovery_done		#tony
        log -t recovery "Install new recovery image completed"
  else
	echo 2 > /sys/module/sec/parameters/recovery_done		#tony
        log -t recovery "Install new recovery image not completed"
  fi
else
  echo 0 > /sys/module/sec/parameters/recovery_done              #tony
  log -t recovery "Recovery image already installed"
fi
