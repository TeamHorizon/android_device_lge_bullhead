# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := xenonhd_bullhead
PRODUCT_DEVICE := bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

#Don't ship SuperSU
#WITH_SUPERSU := false

#ROOT METHOD
#Magisk
ROOT_METHOD=magisk
#SU
#ROOT_METHOD=su

#Ship snap cam && cam 2
PRODUCT_PACKAGES += \
    Camera2 \
    Snap

#Additional Product Packages (3rd party)
PRODUCT_PACKAGES += \
    Adaway \
    KernelAdiutor \
    MiXplorer \

#Maintainer Info
PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer=Sid

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT="google/bullhead/bullhead:7.1.2/N2G47F/3769476:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 7.1.2 N2G47F 3769476 release-keys"
endif
