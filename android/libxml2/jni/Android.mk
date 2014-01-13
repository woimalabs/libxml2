
LOCAL_PATH:= $(call my-dir)

LS_CPP=$(subst $(1)/,,$(wildcard $(1)/$(2)/*.c))
SOURCE_LIST:= $(call LS_CPP,$(LOCAL_PATH), ../../../libxml2-2.7.8)

include $(CLEAR_VARS)

DISABLED_WARNING_FLAGS := \
	-Wno-format \
	-Wno-pointer-sign \
	-Wno-sign-compare

LOCAL_MODULE:= libxml2
LOCAL_SRC_FILES:= $(SOURCE_LIST)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../../libxml2-2.7.8/include
LOCAL_C_INCLUDES := $(LOCAL_EXPORT_C_INCLUDES)

include $(BUILD_SHARED_LIBRARY)

