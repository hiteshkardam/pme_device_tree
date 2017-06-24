#
# Copyright 2015 The Android Open Source Project
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


# Provide meaningful APN configuration
PRODUCT_COPY_FILES := device/htc/pme/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_pme
PRODUCT_DEVICE := pme
PRODUCT_BRAND := HTC
PRODUCT_MODEL := HTC 10
PRODUCT_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := true
PRODUCT_RELEASE_NAME := pme
TARGET_VENDOR := htc

$(call inherit-product, device/htc/pme/device.mk)
$(call inherit-product-if-exists, vendor/htc/pme/pme-vendor.mk)

PRODUCT_PACKAGES += \
    Launcher3

IS_ARM64 := true
