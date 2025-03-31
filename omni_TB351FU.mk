#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TB351FU device
$(call inherit-product, device/lenovo/TB351FU/device.mk)

PRODUCT_DEVICE := TB351FU
PRODUCT_NAME := omni_TB351FU
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB351FU
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_t808aa-user 12 SP1A.210812.016 16.0.14.342_250106 release-keys"

BUILD_FINGERPRINT := alps/hal_mgvi_t_64_wifi_armv82/mgvi_t_64_wifi_armv82:12/SP1A.210812.016/16.0.14.342_250106:user/release-keys
