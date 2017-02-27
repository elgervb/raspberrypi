
# KODI
Open Source Media Center for playing videos, music, pictures, games, and more. 

## INSTALLATION
To install Kodi, simply run the following script:
```
./kodi.sh
```

This will install an older version of Kodi. If you want a newer version, then you could follow the guide from pippleware:<br />
[Raspberry Forums](https://www.raspberrypi.org/forums/viewtopic.php?p=832735#p832735)<br />
[Lates version of Kodi on Raspberry PI](https://mtantawy.com/quick-tip-how-to-update-to-latest-kodi-16-jarvis-on-raspberry-pi/#comment-80)


## ADD ONS

### EXODUS
Install exodus to stream torrents using Kodi<br />
[Install EXODUS tutorial](http://www.wirelesshack.org/step-by-step-kodi-jarvis-and-exodus-install.html)

## TROUBLESHOUTING

### NO VIDEO
**Q) Kodi is playing, but I only see a visualisation**

**A)** This could be due to too less GPU memory. <br />
__error: _eglCreateImageKHR:  failed to create image for buffer 0x1 target 12465 error 0x300c_ __

You can increase GPU memory by following these steps:

Open the Raspberry PI's Config by typing in the console:
```
sudo raspi-config
```
This will open up a menu on a blue background. Perform the following actions:

- Go to Advanced Options.
- Go to Memory Split.
- Delete 64 and enter 128 (or 256) instead. Press enter.
- Go down to Finish.
- Click Yes to reboot.



### NO SHOUND
**Q) My Kodi is playing, but I do not hear any sound...**

**A)** Check if there is a red sound icon in the top right corner of your screen. If so, then Kodi has been muted.
To unmute, connect a keyboard to your Raspberry and press **F8** to unmute.


## LINKS
http://kodi.wiki/view/HOW-TO:Install_Kodi_on_Raspberry_Pi#Raspbian
