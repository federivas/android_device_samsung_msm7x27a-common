# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# BoardConfig.mk
#

## Kernel, bootloader etc.
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_SOURCE := kernel/samsung/msm7x27a

## Platform
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_SPECIFIC_HEADER_PATH := device/samsung/msm7x27a-common/include

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp

## Bionic
TARGET_CORTEX_CACHE_LINE_32 := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true

## Camera
USE_CAMERA_STUB := false
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USES_LEGACY_OVERLAY := true
TARGET_DISABLE_ARM_PIE := true
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_QCOM
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

## Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

## Graphics, media
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/msm7x27a-common/prebuilt/lib/egl/egl.cfg
BOARD_USES_QCOM_HARDWARE := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ICS_DECODERS

## GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x27a
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

## Bluetooth
BOARD_HAVE_BLUETOOTH := true

## Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WLAN_DEVICE := ath6kl
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
WIFI_DRIVER_MODULE_PATH := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_NAME := "ar6000"
BOARD_HAVE_SAMSUNG_WIFI := true

## RIL
BOARD_USES_LEGACY_RIL := true
BOARD_USES_LIBSECRIL_STUB := true
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

## Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 24

## UMS
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"

## Legacy touchscreen support
BOARD_USE_LEGACY_TOUCHSCREEN := true

## Samsung has weird framebuffer
TARGET_NO_INITLOGO := true

## Bootanimation
TARGET_BOOTANIMATION_USE_RGB565 := true

## Use device specific modules
TARGET_PROVIDES_LIBLIGHTS := true

## Recovery
TARGET_RECOVERY_INITRC := device/samsung/msm7x27a-common/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/samsung/msm7x27a-common/recovery/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_FLASH_BLOCK_SIZE := 131072

## Filesystem
BOARD_DATA_DEVICE := /dev/block/mmcblk0p18
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p16
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p17
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw

## Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 979369984
