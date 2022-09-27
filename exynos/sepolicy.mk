#
# This policy configuration will be used by all exynos products
# that inherit from JARVIS-ROM
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/jarvis/sepolicy/exynos/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/jarvis/sepolicy/exynos/dynamic \
    device/jarvis/sepolicy/exynos/system
else
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/jarvis/sepolicy/exynos/dynamic \
    device/jarvis/sepolicy/exynos/vendor
endif
