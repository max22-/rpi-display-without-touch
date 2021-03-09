# rpi-display overlay, with touch sensor removed

You have an ILI9341 display, and some other devices you want to put on your Raspberry Pi. But not enough free pins. Let's sacrifice the touch sensor so that everything fits on the pins :)

# How to use it ?

Run this on your Pi :

```
$ git clone https://github.com/max22-/rpi-display-without-touch
$ cd rpi-display-without-touch
$ make
$ sudo make install
```

Then edit /boot/config.txt and add this:
dtoverlay=rpi-display-without-touch

You can add parameters with dtparam=something if you need.
The available parameters are :
- speed : the spi max frequency
- rotate : to rotate the display (0, 90, 180, or 270 degrees)
- fps : frames per second
- debug
- backlight : to change the backlight pin number

(They are the same as the original overlay, except the touch sensor parameters, of course)


# Wiring

Screen <---> Raspberry Pi

- VIN : 5V
- GND : GND
- CS : CE0
- RESET : GPIO23
- D/C : GPIO24
- SDI : MOSI
- SCK : SCK
- LED : GPIO18 (can be modified with "backlight" option)
- SDO : MISO

# Original code

The original code can be found here :
(https://github.com/raspberrypi/linux/blob/rpi-5.4.y/arch/arm/boot/dts/overlays/rpi-display-overlay.dts)[https://github.com/raspberrypi/linux/blob/rpi-5.4.y/arch/arm/boot/dts/overlays/rpi-display-overlay.dts]
