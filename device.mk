#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/xiaomi/hydrogen/overlay

# call the proprietary setup
$(call inherit-product-if-exists, vendor/xiaomi/hydrogen/hydrogen-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    device/xiaomi/hydrogen/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    device/xiaomi/hydrogen/audio/mixer_paths.xml:system/etc/mixer_paths_wcd9326.xml

# Display
PRODUCT_COPY_FILES += \
    device/xiaomi/hydrogen/configs/calib.cfg:system/etc/calib.cfg

# Input
PRODUCT_COPY_FILES += \
    device/xiaomi/hydrogen/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc

PRODUCT_COPY_FILES += \
    device/xiaomi/hydrogen/keylayout/atmel-maxtouch.kl:system/usr/keylayout/atmel-maxtouch.kl \
    device/xiaomi/hydrogen/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/xiaomi/hydrogen/keylayout/ft5x46.kl:system/usr/keylayout/ft5x46.kl \
    device/xiaomi/hydrogen/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/xiaomi/hydrogen/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# Libshims
PRODUCT_PACKAGES += \
    libshims_ims

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc

# Sensors
PRODUCT_COPY_FILES += \
    device/xiaomi/hydrogen/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    device/xiaomi/hydrogen/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

# Wifi
PRODUCT_COPY_FILES += \
    device/xiaomi/hydrogen/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/xiaomi/hydrogen/wifi/WCNSS_qcom_wlan_nv_b3gbl.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_b3gbl.bin

# Inherit from msm8956-common
$(call inherit-product, device/xiaomi/msm8956-common/msm8956.mk)
