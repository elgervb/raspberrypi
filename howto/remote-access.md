
# REMOTE ACCESS
Access your PI from your network and outside

## SSH
Commandline SSH access: 
[Raspberry Docs on SSH](https://www.raspberrypi.org/documentation/remote-access/ssh/)

## VNC
Remote desktop with VNC:
[Raspberry Docs on VNC](https://www.raspberrypi.org/documentation/remote-access/vnc/)


### LOGIN
Default Raspberry PI login:

**user**: pi <br />
**pass**: raspberry


## FIREWALL
The above will work from the internal network. To enable access from the outside world, 
then you should open some ports in your firewall.
These ports should be forwarded to your Raspberry PI.

### SSH
open TCP port: **22** 

### VNC
open TCP port: **5900**
