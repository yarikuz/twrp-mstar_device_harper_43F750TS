#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m7332 device
$(call inherit-product, device/mediatek/m7332/device.mk)

PRODUCT_DEVICE := m7332
PRODUCT_NAME := twrp_m7332
PRODUCT_BRAND := MediaTek
PRODUCT_MODEL := m7332
PRODUCT_MANUFACTURER := MediaTek

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=m7332 \
	PRODUCT_NAME=m7332
    PRIVATE_BUILD_DESC="m7332_eu-user 11 RP1A.200720.011 2795325813 release-keys"

BUILD_FINGERPRINT := STARWIND/SW-LED43UG405.V430DJ1-Q01/SW-LED43UG405.V430DJ1-Q01:11/RP1A.200720.011/2795325813:user/release-keys