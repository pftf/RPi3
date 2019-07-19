#!/bin/bash
export CROSS_COMPILE=/usr/bin/aarch64-linux-gnu-
export WORKSPACE=$PWD
export PACKAGES_PATH=$WORKSPACE/edk2:$WORKSPACE/edk2-platforms:$WORKSPACE/edk2-non-osi
. edk2/edksetup.sh
build -a AARCH64 -t GCC5 -p edk2-platforms/Platform/RaspberryPi/RPi3/RPi3.dsc -b RELEASE --pcd gEfiMdeModulePkgTokenSpaceGuid.PcdFirmwareVersionString=L"edk2-$FIRMWARE_VERSION"
