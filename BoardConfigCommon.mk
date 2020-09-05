#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common msm8937-common
include device/xiaomi/msm8937-common/BoardConfigCommon.mk

COMMON_PATH := device/xiaomi/sdm439-common

# Kernel
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += earlycon=msm_serial_dm,0x78B0000 loop.max_part=7
TARGET_KERNEL_SOURCE := kernel/xiaomi/sdm439

# Partitions
TARGET_COPY_OUT_VENDOR := vendor
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1966587904 # 1966604288 - 16384
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824

# Inherit from the proprietary version
include vendor/xiaomi/sdm439-common/BoardConfigVendor.mk
