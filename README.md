# taloLogger for Enervent EDA in a Docker container

This container is a starting point for quickly getting started with logging Enervent EDA using the taloLogger software by Olli Lammi. It can be configured as you like by using the image as a starting point and configuring new data sources and data storages. You might have to map other devices as well.

## Quick start

```
https://github.com/brikkney/talologger.git

cd talologger

docker-compose up
```

## Technical details

Image is based on http://olammi.iki.fi/sw/taloLogger/taloLogger_v17h.zip which will be downloaded if you build the image yourself.

The python install script on http://olammi.iki.fi/sw/taloLoggerPi/install_taloLoggerPi.py was used as a starting point to decide which packages should be installed in the Debian base container
