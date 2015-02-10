#!/usr/bin/env make

initrd.img: init bin
	find $^ -ls | awk '{print $$11}' | cpio --create -H newc | gzip -9 > $@

clean:
	rm -f initrd.img
