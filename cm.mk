# Release name
PRODUCT_RELEASE_NAME := k10e70

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/k10e70/device_k10e70.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := k10e70
PRODUCT_NAME := cm_k10e70
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := k10e70
PRODUCT_MANUFACTURER := lenovo
