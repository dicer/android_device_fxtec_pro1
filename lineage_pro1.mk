#
# Copyright (C) 2017 The LineageOS Open Source Project
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

# Inherit from pro1 device
$(call inherit-product, device/fxtec/pro1/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_pro1
PRODUCT_DEVICE := pro1
PRODUCT_MANUFACTURER := FxTec
PRODUCT_BRAND := FxTec
PRODUCT_MODEL := FXTEC T5

PRODUCT_GMS_CLIENTID_BASE := android-fxtec

TARGET_VENDOR_PRODUCT_NAME := FxTecPro1
TARGET_VENDOR_DEVICE_NAME := FxTecPro1

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=FxTecPro1 PRODUCT_NAME=FxTecPro1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="FxTec/t5/t5:9/PKQ1.181121.001/root06051643:user/release-keys"

BUILD_FINGERPRINT := FxTec/t5/t5:9/PKQ1.181121.001/root06051643:user/release-keys

TARGET_VENDOR := fxtec
