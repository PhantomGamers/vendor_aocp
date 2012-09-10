$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/cdma.mk)

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/common_phone.mk)

# Camera
PRODUCT_PACKAGES += \
    Camera
	
#bootanimation
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip

#OTA
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/xhdpi/AoCPOTA.apk:system/app/AoCPOTA.apk

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="Verizon/d2vzw/d2vzw:4.0.4/IMM76D/I535VRALG1:user/release-keys" PRIVATE_BUILD_DESC="d2vzw-user 4.0.4 IMM76D I535VRALG1 release-keys"

PRODUCT_NAME := aocp_d2vzw
PRODUCT_DEVICE := d2vzw
