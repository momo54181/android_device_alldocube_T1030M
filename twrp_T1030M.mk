#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from T1030M device
$(call inherit-product, device/alldocube/T1030M/device.mk)

PRODUCT_DEVICE := T1030M
PRODUCT_NAME := twrp_T1030M
PRODUCT_BRAND := Alldocube
PRODUCT_MODEL := iPlay 50 Pro
PRODUCT_MANUFACTURER := alldocube

PRODUCT_GMS_CLIENTID_BASE := android-alldocube

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_k6789v1_64-user 12 SP1A.210812.016 1697111668 release-keys"

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true

BUILD_FINGERPRINT := Alldocube/iPlay_50_Pro/T1030M:12/SP1A.210812.016/1697111668:user/release-keys