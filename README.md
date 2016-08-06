# taloLogger for Enervent EDA in a Docker container

This container is a starting point for quickly getting started with logging Enervent EDA using the taloLogger software by Olli Lammi. It can be configured as you like by using the image as a starting point and configuring new data sources and data storages. You might have to map other devices as well.

## First step ##

- Modify `taloLogger.conf` to your needs, more details about how to configure are found on http://olammi.iki.fi/sw/taloLogger/howto.php
- If you need access to devices (like ttyUSB0) modify docker-compose.yml accordingly

## Quick start on Linux with Docker installed ###

```
$ git clone https://github.com/brikkney/talologger.git
$ cd talologger
$ docker-compose upp app
```

## Quick start Raspberry Pi

### Setup HypriotOS

```
$ wget https://downloads.hypriot.com/hypriotos-rpi-v0.8.0.img.zip
$ unzip hypriotos-rpi-v0.8.0.img.zip
$ sudo dd bs=1m if=hypriotos-rpi-v0.8.0.img of=/dev/r<disknr> 
```
(see http://blog.hypriot.com/getting-started-with-docker-and-mac-on-the-raspberry-pi/ for more details of flashing on Mac OS X)
```
$ git clone https://github.com/brikkney/talologger.git
$ cd talologger
$ docker-compose up rpi-app
```

## Technical details

Image is based on http://olammi.iki.fi/sw/taloLogger/taloLogger_v17h.zip which will be downloaded if you build the image yourself.

The python install script on http://olammi.iki.fi/sw/taloLoggerPi/install_taloLoggerPi.py was used as a starting point to decide which packages should be installed in the Debian base container
