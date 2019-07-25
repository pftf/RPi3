#
make -C edk2/BaseTools
export GCC5_AARCH64_PREFIX=aarch64-linux-gnu-
export WORKSPACE=$PWD
export PACKAGES_PATH=$WORKSPACE/edk2:$WORKSPACE/edk2-platforms:$WORKSPACE/edk2-non-osi
source edk2/edksetup.sh
build -a AARCH64 -t GCC5 -p edk2-platforms/Platform/RaspberryPi/RPi3/RPi3.dsc -b DEBUG -D SECURE_BOOT_ENABLE=TRUE --pcd gEfiMdeModulePkgTokenSpaceGuid.PcdFirmwareVersionString=L"UEFI Firmware $APPVEYOR_REPO_TAG_NAME (DEBUG)"
build -a AARCH64 -t GCC5 -p edk2-platforms/Platform/RaspberryPi/RPi3/RPi3.dsc -b RELEASE -D SECURE_BOOT_ENABLE=TRUE --pcd gEfiMdeModulePkgTokenSpaceGuid.PcdFirmwareVersionString=L"UEFI Firmware $APPVEYOR_REPO_TAG_NAME (EDK2)"
