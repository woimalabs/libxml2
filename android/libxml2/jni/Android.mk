LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE:= libxml2

# includes
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../../libxml2-2.7.8/include external/icu4c/common
LOCAL_C_INCLUDES := $(LOCAL_EXPORT_C_INCLUDES)

# sources
SOURCE_PATH:=../../../libxml2-2.7.8
FILES_ALL:= $(wildcard $(LOCAL_PATH)/$(SOURCE_PATH)/*.c)
LOCAL_SRC_FILES:= $(FILES_ALL:$(LOCAL_PATH)/%=%)

# build
DISABLED_WARNING_FLAGS := \
	-Wno-format \
	-Wno-pointer-sign \
	-Wno-sign-compare

include $(BUILD_SHARED_LIBRARY)
