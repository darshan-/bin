#!/bin/bash

for m in vbox{drv,netadp,netflt}; do sudo modprobe $m; done
VirtualBox
for m in vbox{netadp,netflt,drv}; do sudo rmmod $m; done
