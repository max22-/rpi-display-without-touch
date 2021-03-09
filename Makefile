all: rpi-display-without-touch.dtbo

rpi-display-without-touch.dtbo: rpi-display-without-touch.dts
	dtc -@ -I dts -O dtb -o rpi-display-without-touch.dtbo rpi-display-without-touch.dts

.PHONY: install uninstall clean

install: rpi-display-without-touch.dtbo
	cp rpi-display-without-touch.dtbo /boot/overlays

uninstall:
	rm -f /boot/overlays/rpi-display-without-touch.dtbo

clean:
	rm -f rpi-display-without-touch.dtbo





