LOCAL_PATH := device/xiaomi/vili

$(call inherit-product, vendor/xiaomi/vili/vili-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service \
    vendor.qti.hardware.vibrator.service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml
