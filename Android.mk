LOCAL_PATH:= $(call my-dir)

#libRawUtils

include $(CLEAR_VARS)
LOCAL_CPPFLAGS  := -fexceptions -frtti
LOCAL_MODULE     := libraw
LOCAL_LDLIBS	:=	-llog -fopenmp
LOCAL_SRC_FILES  :=  rawUtils/swab.cpp rawUtils/internal/dcraw_common.cpp rawUtils/internal/dcraw_fileio.cpp rawUtils/internal/demosaic_packs.cpp rawUtils/src/libraw_cxx.cpp rawUtils/src/libraw_c_api.cpp rawUtils/src/libraw_datastream.cpp
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/libraw
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_LDLIBS 	:= -llog -fopenmp -ljnigraphics
LOCAL_CFLAGS += -fopenmp
LOCAL_MODULE    := libRawUtils
LOCAL_SRC_FILES := rawUtils/librawutils/librawutils.cpp
LOCAL_STATIC_LIBRARIES := libraw
include $(BUILD_SHARED_LIBRARY)
