#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RM6785/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

WITH_GAPPS := true


# Extra Stuffs
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := Gofaraway71
TARGET_BUILD_VIMUSIC := true
USE_MOTO_CALCULATOR := true
WITH_GMS := true
# Pixel Offline Charging
WITH_INFINITY_CHARGER := true
EVEREST_MAINTAINER := Gofaraway71

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_CALL_RECORDING_SUPPORTED := true
TARGET_SUPPORTS_TOUCHGESTURES := true

# RisingOS flags
RISING_BUILDTYPE := UNOFFICIAL
PRODUCT_NO_CAMERA := false
TARGET_PREBUILT_BCR := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Lunch banner maintainer variable
RISING_MAINTAINER="Gofaraway71"


# GMS
RISING_PACKAGE_TYPE := GAPPS
WITH_GMS := true
TARGET_CORE_GMS_EXTRAS := true
TARGET_CORE_GMS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_RM6785
PRODUCT_DEVICE := RM6785
PRODUCT_BRAND := realme
PRODUCT_MODEL := RM6785
PRODUCT_MANUFACTURER := realme
PRODUCT_GMS_CLIENTID_BASE := android-oppo

BUILD_FINGERPRINT := "google/sailfish/sailfish:8.1.0/OPM1.171019.011/4448085:user/release-keys"

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
