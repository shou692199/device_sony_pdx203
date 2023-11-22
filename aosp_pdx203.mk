#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

IS_PHONE := true

PRODUCT_NAME := aosp_pdx203
PRODUCT_DEVICE := pdx203
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := XQ-AT52

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=XQ-AT52 \
    TARGET_PRODUCT=XQ-AT52 \
    PRIVATE_BUILD_DESC="XQ-AT52-user 12 58.2.A.7.93 058002A007009304241360111 release-keys"

BUILD_FINGERPRINT := Sony/XQ-AT52/XQ-AT52:12/58.2.A.7.93/058002A007009304241360111:user/release-keys
