This directory contains *non-free* WLAN firmware that GNU/Linux might require you to
provide when seting up Wireless access on the Raspberry Pi 3. For instance, Debian 10
may ask you to provide these files during installation.

The origin of these files is as follows:
- brcmfmac43430-sdio.bin, brcmfmac43430-sdio.clm_blob, brcmfmac43455-sdio.bin, and
  brcmfmac43455-sdio.clm_blob were taken from the official Cypress wireless firmware
  binary archive that can be downloaded at:
  https://community.cypress.com/docs/DOC-17441
- brcmfmac43430-sdio.txt and brcmfmac43455-sdio.txt were taken from:
  https://github.com/armbian/firmware/tree/master/brcm

The current version for these firmwares are:
- firmware/brcmfmac43430-sdio.bin: v7.45.98.94
- firmware/brcmfmac43455-sdio.bin: v7.45.197
