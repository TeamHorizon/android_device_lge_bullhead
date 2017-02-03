#
# Copyright 2013-2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#BootAnimation Config
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

#Include Inline Kernel Config
#include device/lge/bullhead/BoardConfigKernel.mk

#Include TWRP Config 
#include device/lge/bullhead/BoardConfigTWRP.mk

#Inherit GSM Telephony parts
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit from our custom product configuration
#$(call inherit-product, vendor/carbon/config/common.mk)

PRODUCT_NAME := xenonhd_bullhead
PRODUCT_DEVICE := bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

#Don't Ship SuperSU
WITH_SUPERSU := false

#Ship Snap Cam && Cam 2
PRODUCT_PACKAGES += \
    Camera2 \
    Snap

#Maintainer Info
PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer=Sid

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT="google/bullhead/bullhead:7.1.1/N4F26I/3532671:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 7.1.1 N4F26I 3532671 release-keys" 
