$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lenovo/k10e70/k10e70-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/k10e70/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lenovo/k10e70/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_k10e70
PRODUCT_DEVICE := k10e70
