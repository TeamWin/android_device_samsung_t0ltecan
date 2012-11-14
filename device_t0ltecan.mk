$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/t0ltecan/t0ltecan-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/t0ltecan/overlay

LOCAL_PATH := device/samsung/t0ltecan
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernAl

PRODUCT_COPY_FILES += \
        device/samsung/t0lteatt/modules/exfat_core.ko:lib/modules/exfat_core.ko
PRODUCT_COPY_FILES += \
        device/samsung/t0lteatt/modules/exfat_fs.ko:lib/modules/exfat_fs.ko

#$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_t0ltecan
PRODUCT_BRAND := Samsung
