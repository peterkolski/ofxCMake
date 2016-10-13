# ===================== Libs =====================
set(glut_lib    "${OF_DIRECTORY_ABSOLUTE}/libs/glut/lib/osx/GLUT.framework")
set(LIB_FMODEX  ${OF_DIRECTORY_ABSOLUTE}/libs/fmodex/lib/osx/libfmodex.dylib)
set(LIB_GLFW    ${OF_DIRECTORY_ABSOLUTE}/libs/glfw/lib/osx/glfw3.a)
set(LIB_FREEIMAGE ${OF_DIRECTORY_ABSOLUTE}/libs/FreeImage/lib/osx/freeimage.a)
set(LIB_FREETYPE ${OF_DIRECTORY_ABSOLUTE}/libs/freetype/lib/osx/freetype.a)
set(LIB_GLEW    ${OF_DIRECTORY_ABSOLUTE}/libs/glew/lib/osx/glew.a)
set(LIB_POCO_1  ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoCrypto.a)
set(LIB_POCO_2  ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoData.a)
set(LIB_POCO_3  ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoJSON.a)
set(LIB_POCO_4  ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoDataSQLite.a)
set(LIB_POCO_5  ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoFoundation.a)
set(LIB_POCO_6  ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoNet.a)
set(LIB_POCO_7  ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoNetSSL.a)
set(LIB_POCO_8  ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoUtil.a)
set(LIB_POCO_9  ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoXML.a)
set(LIB_POCO_10 ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoZip.a)
set(LIB_POCO_11 ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoMongoDB.a)
set(LIB_RTAUDIO ${OF_DIRECTORY_ABSOLUTE}/libs/rtAudio/lib/osx/rtAudio.a)
set(LIB_TESS    ${OF_DIRECTORY_ABSOLUTE}/libs/tess2/lib/osx/tess2.a)
set(LIB_CAIRO1  ${OF_DIRECTORY_ABSOLUTE}/libs/cairo/lib/osx/cairo-script-interpreter.a)
set(LIB_CAIRO2  ${OF_DIRECTORY_ABSOLUTE}/libs/cairo/lib/osx/cairo.a)
set(LIB_CAIRO3  ${OF_DIRECTORY_ABSOLUTE}/libs/cairo/lib/osx/pixman-1.a)
set(LIB_OPENSSL1 ${OF_DIRECTORY_ABSOLUTE}/libs/openssl/lib/osx/crypto.a)
set(LIB_OPENSSL2 ${OF_DIRECTORY_ABSOLUTE}/libs/openssl/lib/osx/ssl.a)
set(LIB_BOOST_1 ${OF_DIRECTORY_ABSOLUTE}/libs/boost/lib/osx/boost.a)
set(LIB_BOOST_2 ${OF_DIRECTORY_ABSOLUTE}/libs/boost/lib/osx/boost_filesystem.a)
set(LIB_BOOST_3 ${OF_DIRECTORY_ABSOLUTE}/libs/boost/lib/osx/boost_system.a)


# ===================== System Frameworks =====================
set(FRAMEWORKS_DIR /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/System/Library/Frameworks)

find_library(accelerate_lib     Accelerate)
find_library(iokit_lib          IOKit)
find_library(agl_lib            AGL)
find_library(applicationservices_lib ApplicationServices)
find_library(audiotoolbox_lib   AudioToolbox)
find_library(coreaudio_lib      CoreAudio)
find_library(corefoundation_lib CoreFoundation)
find_library(coreservices_lib   CoreServices)
find_library(opengl_lib         OpenGL)
find_library(quicktime_lib      QuickTime)
find_library(corevideo_lib      CoreVideo)
find_library(qtkit_lib          QTKit)
find_library(cocoa_lib          Cocoa)
find_library(coremedia_lib      CoreMedia)
find_library(avfoundation_lib   AVFoundation)
find_library(quartzcore_lib     QuartzCore)
find_library(appkit_lib         AppKit)

set(OF_CORE_FRAMEWORKS
        ${accelerate_lib}
        ${iokit_lib}
        ${agl_lib}
        ${applicationservices_lib}
        ${audiotoolbox_lib}
        ${coreaudio_lib}
        ${corefoundation_lib}
        ${coreservices_lib}
        ${opengl_lib}
        ${quicktime_lib}
        ${corevideo_lib}
        ${qtkit_lib}
        ${cocoa_lib}
        ${coremedia_lib}
        ${avfoundation_lib}
        ${quartzcore_lib}
        ${appkit_lib})
# =============================================================
