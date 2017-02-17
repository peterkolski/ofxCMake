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
set(LIB_GLFW ${OF_DIRECTORY_ABSOLUTE}/libs/glfw/lib/linux64/libglfw3.a )
set(LIB_KISS ${OF_DIRECTORY_ABSOLUTE}/libs/kiss/lib/linux64/libkiss.a )
set(LIB_POCO_CRYPTO ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoCrypto.a )
set(LIB_POCO_FOUNDATION ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoFoundation.a )
set(LIB_POCO_NET ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoNet.a )
set(LIB_POCO_NETSSL ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoNetSSL.a )
set(LIB_POCO_UTIL ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoUtil.a )
set(LIB_POCO_XML ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoXML.a )
set(LIB_POCO_JSON ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/linux64/libPocoJSON.a )
set(LIB_TESS ${OF_DIRECTORY_ABSOLUTE}/libs/tess2/lib/linux64/libtess2.a )

# ---- shared
set( LIB_FMODEX ${OF_DIRECTORY_ABSOLUTE}/libs/fmodex/lib/linux64/libfmodex.so )

set( OF_CORE_LIBS
        ${LIB_GLFW}
        ${LIB_KISS}
        ${LIB_POCO_CRYPTO} ${LIB_POCO_FOUNDATION} ${LIB_POCO_NET}
        ${LIB_POCO_NETSSL} ${LIB_POCO_UTIL} ${LIB_POCO_XML} ${LIB_POCO_JSON}
        ${LIB_TESS}
        )

# ============================================================================
# ----------------------------- System Frameworks ----------------------------
set(CMAKE_MODULE_PATH
  "${CMAKE_MODULE_PATH}"
  "${CMAKE_CURRENT_LIST_DIR}")

find_package(PkgConfig REQUIRED)
find_package(GStreamer REQUIRED)

PKG_SEARCH_MODULE( ALSA "REQUIRED" alsa )
PKG_SEARCH_MODULE( CAIRO "REQUIRED" cairo )

include_directories( ${CAIRO_INCLUDE_DIRS} )
include_directories( ${OPENAL_INCLUDE_DIRS} )
include_directories( ${ALSA_INCLUDE_DIRS} )
include_directories( ${GSTREAMER_APP_INCLUDE_DIRS} )
include_directories( ${GSTREAMER_BASE_INCLUDE_DIRS} )
include_directories( ${GSTREAMER_VIDEO_INCLUDE_DIRS} )


set( OF_CORE_FRAMEWORKS
        z
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
        boost_system
        ${LIB_FMODEX}       # SHARED
        )

