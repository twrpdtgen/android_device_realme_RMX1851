#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RMX1851 device
$(call inherit-product, device/realme/RMX1851/device.mk)

PRODUCT_DEVICE := RMX1851
PRODUCT_NAME := omni_RMX1851
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Relame 3 Pro
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_RMX1851-eng 127 RQ1A.210205.004 1 test-keys"

BUILD_FINGERPRINT := Realme/fox_RMX1851/RMX1851:127/RQ1A.210205.004/1:eng/test-keys
