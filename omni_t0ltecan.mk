# Release name
PRODUCT_RELEASE_NAME := t0ltecan

# Inherit device configuration
$(call inherit-product, device/samsung/t0ltecan/device_t0ltecan.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t0ltecan
PRODUCT_NAME := omni_t0ltecan
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := t0ltecan
PRODUCT_MANUFACTURER := Samsung
