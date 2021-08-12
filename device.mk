#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Overlays-Device
PRODUCT_PACKAGES += \
    CmiFrameworks \
    CmiSystemUI

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 29
# Properties
TARGET_PRODUCT_PROP := $(LOCAL_PATH)/product.prop

# Fingerprint
TARGET_HAS_FOD := true
SOONG_CONFIG_XIAOMI_KONA_FOD_POS_X = 441
SOONG_CONFIG_XIAOMI_KONA_FOD_POS_Y = 1808
SOONG_CONFIG_XIAOMI_KONA_FOD_SIZE = 197

# Inherit from xiaomi sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/cmi/cmi-vendor.mk)
