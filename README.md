# PXE dust

This allows us to boot from an externally maintained rootfs, which is loaded
from a given URL, and install this rootfs either on a tmpfs (RAM) or on a KVM
(/dev/vda) block-device.

Sets up the rootfs, mounts required pseudo filesystems and calls
/bin/switch_root on the new root.

Note that this also provisions a serial console upstart script if a serial
console is passed as a kernel-argument.

The following kernel-arguments are supported:

  * console=ttyS0
  * ip=dhcp
  * todisk=label
  * size=size of tmpfs
  * rootfs=url
  * break=top|preunpack|bottom
