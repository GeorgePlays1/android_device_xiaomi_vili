#
# Copyright (C) 2026 The AetherUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common sm8350 configurations
$(call inherit-product, device/xiaomi/sm8350-common/common.mk)

# Inherit from proprietary vendor blobs
$(call inherit-product, vendor/xiaomi/vili/vili-vendor.mk)

# Device Product Name
PRODUCT_NAME := aether_vili
PRODUCT_DEVICE := vili
PRODUCT_MODEL := Xiaomi 11T Pro

PRODUCT_MANUFACTURER := xiaomi
PRODUCT_BRAND := Xiaomi

# Fingerprint / Build Info (Android 14 / UKDMIXM)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vili-user 14 UKQ1.230917.001 V816.0.14.0.UKDMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/vili/vili:14/UKQ1.230917.001/V816.0.14.0.UKDMIXM:release-keys
