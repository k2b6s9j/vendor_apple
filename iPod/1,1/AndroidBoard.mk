LOCAL_PATH := $(call my-dir)
COMMON := $(dir $(LOCAL_PATH))common

include $(CLEAR_VARS)
LOCAL_SRC_FILES := gpio-keys.kcm
LOCAL_MODULE_TAGS := eng
include $(BUILD_KEY_CHAR_MAP)

SUBDIRS := \
	$(COMMON)/AndroidBoardCommon.mk \
	$(LOCAL_PATH)/libsensors/Android.mk

include $(SUBDIRS)
