Raspberry Pi 3 UEFI Firmware Images
===================================

[![Build status](https://img.shields.io/appveyor/ci/pbatard/RPi3.svg?style=flat-square)](https://ci.appveyor.com/project/pbatard/RPi3)
[![Github stats](https://img.shields.io/github/downloads/pbatard/RPi3/total.svg?style=flat-square)](https://github.com/pbatard/RPi3/releases)

![Screenshot](https://raw.githubusercontent.com/pbatard/RPi3/master/pics/Screenshot1.png)

![Screenshot](https://raw.githubusercontent.com/pbatard/RPi3/master/pics/Screenshot2.png)

# Summary

This repository contains installable builds of the official
[EDK2 Raspberry Pi 3 UEFI firmware](https://github.com/tianocore/edk2-platforms/tree/master/Platform/RaspberryPi/RPi3).

The use of this firmware can __greatly simplify__ the installation of generic Linux
distributions such as [Debian](https://pete.akeo.ie/2019/07/installing-debian-arm64-on-raspberry-pi.html)
or [Ubuntu](https://github.com/tianocore/edk2-platforms/blob/master/Platform/RaspberryPi/RPi3/Systems.md#Ubuntu)
as well as [Windows 10](https://www.worproject.ml/) (in regular GUI mode, not IoT mode),
straight from their ISO images.

The original development of this firmware was carried out by
[Ard Biesheuvel](http://www.workofard.com/2017/02/uefi-on-the-pi/) and
[Andrei Warkentin](https://github.com/andreiw/RaspberryPiPkg).

# Installation

* Download the latest archive from the [Releases](https://github.com/pbatard/RPi3/releases) repository.

* Create an SD card (or USB drive if you plan to use [USB Boot](https://www.raspberrypi.org/documentation/hardware/raspberrypi/bootmodes/msd.md))
  in `MBR` mode with a single partition of type `0x0c` (`FAT32 LBA`) or `0x0e`
  (`FAT16 LBA`). Then format this partition to `FAT32`.

  __Note:__ Do not try to use `GPT` for the partition scheme or `0xef` (`EFI System
  Partition`)  for the type, as these are unsupported by the CPU-embedded bootloader.

* Extract all the files from the archive onto the partition you created above.  
  Note that outside of this `Readme.md`, which you can safely remove, you should not
  change the name of the extracted files and directories.

# Usage

Insert the SD card/plug the USB drive and power up your Raspberry Pi. You should see a
multicoloured screen (which indicates that the CPU-embedded bootloader is reading the
data from the SD/USB partition) and then the Raspberry Pi black and white logo once the
UEFI firmware is ready.

At this stage, you can press <kbd>Esc</kbd> to enter the firmware setup, <kbd>F1</kbd>
to launch the UEFI Shell, or, provided you also have copied an UEFI bootloader in
`efi/boot/bootaa64.efi`, you can let the UEFI system run that (which it should do by
default if no action is taken).

__Note:__ Provided you have relevant cooling (e.g. heatsink), it is __strongly__
recommended that you go to setup on first boot (by pressing the <kbd>Esc</kbd> key) and
then go through `Device Manager` &rarr; `Raspberry Pi Configuration` &rarr; 
`Chipset Configuration` to set `CPU Clock` to `<Max>`, as the default for the firmware
is to limit the CPU clock to 600 MHz.

# License

The firmware (`RPI_EFI.fd`) is licensed under the current EDK2 license, which is
[BSD-3-Clause](https://github.com/ARM-software/arm-trusted-firmware/blob/master/license.rst).

The other files at the root of the zip archives are licensed under the terms described in the
[Raspberry Pi boot files README](https://github.com/raspberrypi/firmware/blob/master/README.md).

The binary blobs in the `firmware/` directory are licensed under the Cypress wireless driver
license that is found there.
