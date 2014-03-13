LOCAL_PATH := $(call my-dir)
COMMON := $(dir $(LOCAL_PATH))common

include $(CLEAR_VARS)
LOCAL_SRC_FILES := gpio-keys.kcm
LOCAL_MODULE_TAGS := eng
include $(BUILD_KEY_CHAR_MAP)

SUBDIRS := \
	$(LOCAL_PATH)/../libril/xmm6180/Android.mk \
	$(COMMON)/AndroidBoardCommon.mk

include $(SUBDIRS)
