This directory contains *non-free* WLAN firmware that GNU/Linux might require you to provide
when seting up Wireless access on the Raspberry Pi 3. For instance, Debian 10.0 will ask you
to provide these files during installation, therefore we are including them for convenience.

The origin of these files is as follows:
- brcmfmac43430-sdio.bin and brcmfmac43455-sdio.bin were taken from:
  http://cdimage.debian.org/cdimage/unofficial/non-free/firmware/buster/20190706/firmware.zip
- brcmfmac43430-sdio.txt, brcmfmac43455-sdio.txt and brcmfmac43455-sdio.clm_blob were taken from:
  https://github.com/armbian/firmware/tree/master/brcm
- brcmfmac43430-sdio.clm_blob was taken from:
  https://github.com/mangOH/mangOH/tree/master/linux_kernel_modules/cypwifi/firmware
