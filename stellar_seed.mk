# Copyright (C) 2021 Stellar OS
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

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from seed device
$(call inherit-product, device/google/seed/device.mk)

# Inherit some common Stellar OS stuff.
$(call inherit-product, vendor/stellar/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

### Stellar OS flags ###

# Our device is low-end, so disable blur.
TARGET_USES_BLUR := false

# Ship with GApps. Enable only if you're sure you can resolve insufficient /system space.
# STELLAR_BUILD_TYPE := gapps

########################

# Device identifier. This must come after all inclusions
PRODUCT_NAME := stellar_seed
PRODUCT_DEVICE := seed
PRODUCT_BRAND := google
PRODUCT_MODEL := General Mobile 4G
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="seed_l8150-user 7.1.1 N0F27E 4103848 release-keys"

BUILD_FINGERPRINT := google/seed/l8150:7.1.1/N0F27E/4103848:user/release-keys
