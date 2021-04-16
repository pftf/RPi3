This directory contains *non-free* WLAN firmware that GNU/Linux might require you to
provide when seting up Wireless access on the Raspberry Pi 3. For instance, Debian 10
may ask you to provide these files during installation.

The origin of these files is as follows:
- brcmfmac43430-sdio.bin, brcmfmac43430-sdio.clm_blob, brcmfmac43455-sdio.bin, and
  brcmfmac43455-sdio.clm_blob were taken from the official Cypress wireless firmware
  binary archive (with "cyfmac..." renamed to "brcmfmac...") that can be downloaded at:
  https://community.cypress.com/t5/Resource-Library/Cypress-Linux-WiFi-Driver-Release-FMAC-2020-09-25/ta-p/251089
- brcmfmac43430-sdio.txt and brcmfmac43455-sdio.txt were extracted from:
  https://archive.raspberrypi.org/debian/pool/main/f/firmware-nonfree/firmware-brcm80211_20190114-1+rpt11_all.deb

The current version for these firmwares are:
- firmware/brcmfmac43430-sdio.bin: v7.45.98.97
- firmware/brcmfmac43455-sdio.bin: v7.45.221
