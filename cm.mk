# Release name
PRODUCT_RELEASE_NAME := t0ltecan

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/t0ltecan/device_t0ltecan.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t0ltecan
PRODUCT_NAME := cm_t0ltecan
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := t0ltecan
PRODUCT_MANUFACTURER := Samsung
