

# including all cpp files recursively
#file( GLOB_RECURSE OFX_OSC_CPP  "${OF_DIRECTORY}/addons/ofxOsc/*.cpp" )
#message( "Cpp-Tree: ${OFX_OSC_CPP}" )

include( ${OF_DIRECTORY}/CMake/addOns/internal/ofxOsc.cmake )
#---------------------------------------------------------------------------------
#------------------------------- ofxXmlSettings ----------------------------------
#---------------------------------------------------------------------------------

file( GLOB_RECURSE OFX_XML_CPP  "${OF_DIRECTORY}/addons/ofxXmlSettings/*.cpp" )

include_directories(    "${OF_DIRECTORY}/addons/ofxXmlSettings/src"
                        "${OF_DIRECTORY}/addons/ofxXmlSettings/libs" )

add_library( ofxXmlSettings STATIC ${OFX_XML_CPP} )


#---------------------------------------------------------------------------------
#------------------------------- ofxGui ----------------------------------
#---------------------------------------------------------------------------------

file( GLOB_RECURSE OFX_GUI_CPP  "${OF_DIRECTORY}/addons/ofxGui/*.cpp" )

include_directories(    "${OF_DIRECTORY}/addons/ofxGui/src" )

add_library( ofxGui STATIC ${OFX_GUI_CPP} )

#---------------------------------------------------------------------------------
#------------------------------- ofxKinect ----------------------------------
#---------------------------------------------------------------------------------
#file( GLOB_RECURSE OUTPUT "${OF_DIRECTORY}/addons/ofxKinect/*.c" )
#message( "Files: ${OUTPUT}" )

set( OFX_KINECT_CPP
        ${OF_DIRECTORY}/addons/ofxKinect/src/extra/ofxKinectExtras.cpp
        ${OF_DIRECTORY}/addons/ofxKinect/src/ofxKinect.cpp
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/audio.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/cameras.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/core.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/flags.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/keep_alive.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/loader.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/registration.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/tilt.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/usb_libusb10.c
##        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/platform/windows/libusb10emu/libusb-1.0/failguard.cpp
##        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/platform/windows/libusb10emu/libusb-1.0/libusbemu.cpp
        )

include_directories(    "${OF_DIRECTORY}/addons/ofxKinect/src"
                        "${OF_DIRECTORY}/addons/ofxKinect/src/extra"
                        "${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/include"
                        "${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src"
                        "${OF_DIRECTORY}/addons/ofxKinect/libs/libusb-1.0/include/libusb-1.0" )

add_library( ofxKinect STATIC ${OFX_KINECT_CPP} )

set( ofxKinectOsxLib "${OF_DIRECTORY}/addons/ofxKinect/libs/libusb-1.0/lib/osx/usb-1.0.a" )


#---------------------------------------------------------------------------------
#-------------------------------- ACTIVE ADDONS ----------------------------------
#---------------------------------------------------------------------------------