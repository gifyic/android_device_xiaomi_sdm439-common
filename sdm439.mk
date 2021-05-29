#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
$(call inherit-product, device/xiaomi/msm8937-common/msm8937.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Power
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/power/android.hardware.power-service-qti.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.power-service-qti.rc

# Properties
include $(LOCAL_PATH)/properties.mk

# Rootdir
PRODUCT_PACKAGES += \
    fstab.qcom

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/sdm439-common/sdm439-common-vendor.mk)
