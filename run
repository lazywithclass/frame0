#!/usr/bin/env bash

xhost +
docker run --rm -e DISPLAY=$DISPLAY -v .:/app -v /tmp/.X11-unix:/tmp/.X11-unix -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket frame0
xhost -
