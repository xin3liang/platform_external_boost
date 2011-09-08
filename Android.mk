LOCAL_PATH:= $(call my-dir)

common_SRC_FILES := \
	libs/thread/src/pthread/thread.cpp \
	libs/thread/src/pthread/once.cpp

common_CFLAGS := -O3 -fvisibility=hidden -pthread
common_CPPFLAGS := -fexceptions

common_C_INCLUDES += $(LOCAL_PATH)/boost

include $(CLEAR_VARS)

LOCAL_SDK_VERSION := 9
LOCAL_NDK_VERSION := 5
LOCAL_NDK_STL_VARIANT := gnustl_static

LOCAL_C_INCLUDES := $(common_C_INCLUDES)
LOCAL_SRC_FILES := $(common_SRC_FILES)
LOCAL_CFLAGS += $(common_CFLAGS)
LOCAL_CPPFLAGS += $(common_CPPFLAGS)

LOCAL_MODULE:= libboost

include $(BUILD_STATIC_LIBRARY)

