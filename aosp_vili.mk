# Inherit platform & device proprietary vendor blobs
$(call inherit-product, vendor/xiaomi/sm8350-common/sm8350-common-vendor.mk)
$(call inherit-product, vendor/xiaomi/vili/vili-vendor.mk)

PRODUCT_NAME := aosp_vili
PRODUCT_DEVICE := vili
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2107113SG
