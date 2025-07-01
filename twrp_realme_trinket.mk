#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from realme_trinket device
$(call inherit-product, device/realme/realme_trinket/device.mk)

PRODUCT_DEVICE := realme_trinket
PRODUCT_NAME := twrp_realme_trinket
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme Trinket Series
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="unknown-user 10 QKQ1.200209.002 unknown release-keys"

BUILD_FINGERPRINT := realme/RMX1911/RMX1911:10/QKQ1.200209.002/1669690933:user/release-keys
