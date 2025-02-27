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

BUILD_BROKEN_MISSING_REQUIRED_MODULES := true 

# Inherit from sony nagara
include device/sony/nagara/BoardConfigCommon.mk

DEVICE_PATH := device/sony/pdx224

# Display
TARGET_SCREEN_DENSITY := 420

BOARD_KERNEL_CMDLINE += buildproduct=pdx224
TARGET_KERNEL_CONFIG += vendor/pdx224.config 

BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := pdx224,XQ-CQ44,XQ-CQ54,XQ-CQ62,XQ-CQ72,A204SO,SO-54C,SOG09

# Props
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/props/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/props/vendor.prop

# inherit from the proprietary version
include vendor/sony/nagara/pdx224/BoardConfigVendor.mk
