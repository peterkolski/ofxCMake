# ============================================================================
# ---------------------------- Source Files ----------------------------------
list( APPEND OF_SOURCE_FILES
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofGstUtils.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofGstVideoGrabber.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofGstVideoPlayer.cpp
        )

# ============================================================================
# --------------------------- Include Folders --------------------------------
set(HEADER_KISS ${OF_DIRECTORY_ABSOLUTE}/libs/kiss/include)

# ------------------ Putting the includes into one list ----------------------
list( APPEND OF_CORE_HEADERS
        ${HEADER_KISS}
        )

# ============================================================================
# ------------------------------ Libraries -----------------------------------
set(LIB_GLFW ${OF_DIRECTORY_ABSOLUTE}/libs/glfw/lib/linux64/libglfw3.a)
set(LIB_KISS ${OF_DIRECTORY_ABSOLUTE}/libs/kiss/lib/linux64/libkiss.a)
set(LIB_POCO_1 ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoCrypto.a)
set(LIB_POCO_5 ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoFoundation.a)
set(LIB_POCO_6 ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoNet.a)
set(LIB_POCO_7 ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoNetSSL.a)
set(LIB_POCO_8 ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoUtil.a)
set(LIB_POCO_9 ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoXML.a)
set(LIB_POCO_11 ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoJSON.a)
set(LIB_TESS ${OF_DIRECTORY_ABSOLUTE}/libs/tess2/lib/linux64/libtess2.a)


set( OF_CORE_LIBS
        ${LIB_GLFW}
        ${LIB_KISS}
        ${LIB_POCO_1} ${LIB_POCO_5} ${LIB_POCO_6}
        ${LIB_POCO_7} ${LIB_POCO_8} ${LIB_POCO_9} ${LIB_POCO_11}
        ${LIB_TESS}
        )

# ============================================================================
# ============================================================================


# from linux64.cmake

include(FindPkgConfig)
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/FindGStreamer)
include(FindOpenAL)


set( PLATFORM_LIBRARIES glut)
set( PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} X11 Xrandr Xxf86vm dl Xinerama Xcursor Xi)
set( PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} freeimage boost_filesystem boost_system)

set( LIB_FMODEX ${OF_DIRECTORY_ABSOLUTE}/libs/fmodex/lib/linux64/libfmodex.so)
set( PLATFORM_SHARED_LIBRARIES ${LIB_FMODEX})
set( PLATFORM_LIBRARIES z
        gstapp-1.0
        gstvideo-1.0
        gstbase-1.0
        gstreamer-1.0
        udev
        fontconfig
        freetype
        sndfile
        openal
        ssl
        crypto
        pulse-simple
        pulse
        asound
        GLEW
        GLU
        GL
        pangocairo-1.0
        gdk_pixbuf-2.0
        cairo-gobject
        pango-1.0
        cairo
        gtk-3
        gdk-3
        atk-1.0
        gio-2.0
        gobject-2.0
        glib-2.0
        mpg123
        glut
        X11
        Xrandr
        Xxf86vm
        dl
        Xinerama
        Xcursor
        Xi
        dl
        pthread
        freeimage
        boost_filesystem
        boost_system )

set( OF_CORE_LIBS ${PLATFORM_STATIC_LIBS} ${PLATFORM_LIBRARIES} ${PLATFORM_SHARED_LIBRARIES} )

PKG_SEARCH_MODULE( ALSA "REQUIRED" alsa )
PKG_SEARCH_MODULE( CAIRO "REQUIRED" cairo )

include_directories( ${CAIRO_INCLUDE_DIRS} )
include_directories( ${OPENAL_INCLUDE_DIRS} )
include_directories( ${ALSA_INCLUDE_DIRS} )
include_directories( ${GSTREAMER_APP_INCLUDE_DIRS} )
include_directories( ${GSTREAMER_BASE_INCLUDE_DIRS} )
include_directories( ${GSTREAMER_VIDEO_INCLUDE_DIRS} )

set( OF_SOURCE_FILES ${OF_SOURCE_FILES} ${ADDON_SOURCE_FILES} )
set_source_files_properties( ${OF_SOURCE_FILES} PROPERTIES COMPILE_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -fPIC" )
include_directories( ${OF_CORE_HEADERS} ${OF_ADDON_HEADERS} )
add_library( core OBJECT ${OF_SOURCE_FILES} )

# ===================== Shared lib =====================
add_library( of_shared SHARED $<TARGET_OBJECTS:core> )
set_target_properties( of_shared PROPERTIES POSITION_INDEPENDENT_CODE on )
set_target_properties( of_shared PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin/${APP_NAME}.app/Contents/Frameworks )
set_target_properties( of_shared PROPERTIES OUTPUT_NAME openFrameworks )
target_link_libraries( of_shared  ${PLATFORM_LIBRARIES} ${PLATFORM_SHARED_LIBRARIES} )
