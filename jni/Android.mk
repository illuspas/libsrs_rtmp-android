
LOCAL_PATH := $(call my-dir)

common_SRC_FILES := \
    libsrs_rtmp/srs_core.cpp                \
    libsrs_rtmp/srs_lib_simple_socket.cpp   \
    libsrs_rtmp/srs_core_autofree.cpp       \
    libsrs_rtmp/srs_librtmp.cpp             \
    libsrs_rtmp/srs_kernel_buffer.cpp       \
    libsrs_rtmp/srs_protocol_amf0.cpp       \
    libsrs_rtmp/srs_kernel_codec.cpp        \
    libsrs_rtmp/srs_protocol_handshake.cpp  \
    libsrs_rtmp/srs_kernel_error.cpp        \
    libsrs_rtmp/srs_protocol_io.cpp         \
    libsrs_rtmp/srs_kernel_file.cpp         \
    libsrs_rtmp/srs_protocol_msg_array.cpp  \
    libsrs_rtmp/srs_kernel_flv.cpp          \
    libsrs_rtmp/srs_protocol_rtmp.cpp       \
    libsrs_rtmp/srs_kernel_log.cpp          \
    libsrs_rtmp/srs_protocol_rtmp_stack.cpp \
    libsrs_rtmp/srs_kernel_stream.cpp       \
    libsrs_rtmp/srs_protocol_utility.cpp    \
    libsrs_rtmp/srs_kernel_utility.cpp

common_C_INCLUDES = $(LOCAL_PATH)/libsrs_rtmp

include $(CLEAR_VARS)
LOCAL_MODULE:=  libsrs_rtmp
LOCAL_SRC_FILES := $(common_SRC_FILES)
LOCAL_CFLAGS += $(common_CFLAGS)
LOCAL_LDFLAGS += $(common_LDFLAGS)
LOCAL_C_INCLUDES += $(common_C_INCLUDES)

include $(BUILD_SHARED_LIBRARY)
