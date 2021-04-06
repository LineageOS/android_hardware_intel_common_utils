LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    OMX_adaptor.cpp

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libutils \
    libcutils \
    libexpat \
    libdl \
    libmrm_arbitrator \

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include

LOCAL_C_INCLUDES := \
    $(call include-path-for, frameworks-native)/media/openmax \
    $(LOCAL_PATH)/../arbitrator \


LOCAL_HEADER_LIBRARIES := khronos_openmax_headers
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libmrm_omx_adaptor

LOCAL_CFLAGS += -Werror

include $(BUILD_SHARED_LIBRARY)
