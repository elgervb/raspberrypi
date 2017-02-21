# raspberrypi
Setup &amp; examples for my Raspberry PI


## Gettings started

Follow the getting started guide on [www.raspberrypi.org](https://www.raspberrypi.org/learning/quick-start-guide/quickstart/). 
Mind the formatting of the SD card.

### SSH
https://www.raspberrypi.org/documentation/remote-access/ssh/

### VNC
https://www.raspberrypi.org/documentation/remote-access/vnc/


Default Raspberry PI login:

user: pi
pass: raspberry


# TROUBLESHOUTING

## error: _eglCreateImageKHR:  failed to create image for buffer 0x1 target 12465 error 0x300c_

GPU does not have enough memory. You can increase it by following these steps:
- `sudo raspi-config`

This will open up a menu on a blue background. Perform the following actions:

- Go to Advanced Options.
- Go to Memory Split.
- Delete 64 and enter 128 (or 256) instead. Press enter.
- Go down to Finish.
- Click Yes to reboot.
