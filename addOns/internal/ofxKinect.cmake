# -----------------------------------------------------------------
# --- NO script applied, as there are different
# --- versions for each plattform
# -----------------------------------------------------------------

# TODO Windows libs
set( OFX_KINECT_CPP
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/src/extra/ofxKinectExtras.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/src/ofxKinect.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/src/audio.c
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/src/cameras.c
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/src/core.c
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/src/flags.c
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/src/keep_alive.c
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/src/loader.c
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/src/registration.c
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/src/tilt.c
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/src/usb_libusb10.c
        ##        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/platform/windows/libusb10emu/libusb-1.0/failguard.cpp
        ##        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/platform/windows/libusb10emu/libusb-1.0/libusbemu.cpp
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/src"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/src/extra"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/include"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libfreenect/src"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libusb-1.0/include/libusb-1.0" )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxKinect
                STATIC
                ${OFX_KINECT_CPP} )

# -----------------------------------------------------------------
# --- Setting a compiled lib
# -----------------------------------------------------------------
#TODO Libs for other OS (Win & Linux)

if( APPLE )
    find_library( CORE_FOUNDATION_LIB_KINECT  CoreFoundation)
    find_library( IOKIT_LIB_KINECT  IOKit)
    find_library( COCOA_LIB_KINECT  Cocoa)
    set(          ofxKinectLib  "${OF_DIRECTORY_ABSOLUTE}/addons/ofxKinect/libs/libusb-1.0/lib/osx/usb-1.0.a" )

    set(    EXTRA_LIBS_KINECT
            ${CORE_FOUNDATION_LIB_KINECT}
            ${IOKIT_LIB_KINECT}
            ${COCOA_LIB_KINECT}
            ${ofxKinectLib}
           )
endif()

target_link_libraries(  ofxKinect ${EXTRA_LIBS_KINECT} )