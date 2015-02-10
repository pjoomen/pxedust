# PXE dust

An initial ramdisk that supports both booting from RAM-disk as well as booting
from a KVM (/dev/vda) block-device. The following kernel-arguments are
supported:

  * console=ttyS0
  * ip=dhcp
  * todisk=label
  * size=size of tmpfs
  * rootfs=url
  * break=top|preunpack|bottom
