#
# Copyright (C) 2018-2022 ArrowOS
#
# Copyright (C) 2023 CherishOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2020/device.mk)

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_RMX2020
PRODUCT_DEVICE := RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme Monet
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_MODEL := RMX2020
PRODUCT_SYSTEM_NAME := RMX2020
PRODUCT_SYSTEM_DEVICE := RMX2020

TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := false

# Build info
BUILD_FINGERPRINT := "google/sunfish/sunfish:13/TQ1A.230205.002/9471150:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# CherishOS
CHERISH_BUILD_TYPE=UNOFFICIAL
TARGET_USES_MINI_GAPPS := true
USE_PIXEL_CHARGING := true
USE_CUSTOM_CLANG=true
TARGET_INCLUDE_CARRIER_SETTINGS := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=CyanFinchLing
