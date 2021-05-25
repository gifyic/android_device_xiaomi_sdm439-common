#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
persist.camera.privapp.list=org.codeaurora.snapcam \
persist.sys.camera.camera2=true \
persist.vendor.camera.display.umax=1920x1080 \
persist.vendor.camera.display.lmax=1280x720 \
persist.vendor.camera.privapp.list=org.codeaurora.snapcam \
persist.vendor.camera.stats.test=5 \
vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.qualcomm.qti.qmmi,com.huaqin.factory,com.westalgo.calibration \
vendor.camera.aux.packagelist1=com.huaqin.cameraautotest,com.xiaomi.cameratools,com.android.camera \
vendor.camera.aux.packagelist2=com.mi.AutoTest

# Display
PRODUCT_PROPERTY_OVERRIDES += \
ro.sf.lcd_density=320
