# TODO Comments

if ("ofxOsc" IN_LIST OFX_ADDONS_ACTIVE)
    include( ${OF_CMAKE_ADDONS}/internal/ofxOsc.cmake )
    message( STATUS "ofxOSC included" )
endif()
if ( "ofxXmlSettings" IN_LIST OFX_ADDONS_ACTIVE )
    include( ${OF_CMAKE_ADDONS}/internal/ofxXmlSettings.cmake )
endif()
if ( "ofxGui" IN_LIST OFX_ADDONS_ACTIVE )
    include( ${OF_CMAKE_ADDONS}/internal/ofxGui.cmake )
endif()
if ( "ofxKinect" IN_LIST OFX_ADDONS_ACTIVE )
    include( ${OF_CMAKE_ADDONS}/internal/ofxKinect.cmake )
endif()
if ( "ofxNetwork" IN_LIST OFX_ADDONS_ACTIVE )
    include( ${OF_CMAKE_ADDONS}/internal/ofxNetwork.cmake )
endif()
if ( "ofxSvg" IN_LIST OFX_ADDONS_ACTIVE )
    include( ${OF_CMAKE_ADDONS}/internal/ofxSvg.cmake )
endif()

if ( "ofxVectorGraphics" IN_LIST OFX_ADDONS_ACTIVE )
    include( ${OF_CMAKE_ADDONS}/internal/ofxVectorGraphics.cmake )
endif()

if ( "ofxOpenCv" IN_LIST OFX_ADDONS_ACTIVE )
    include( ${OF_CMAKE_ADDONS}/internal/ofxOpenCv.cmake )
endif()

if ( "ofxThreadedImageLoader" IN_LIST OFX_ADDONS_ACTIVE )
    include( ${OF_CMAKE_ADDONS}/internal/ofxThreadedImageLoader.cmake )
endif()

if ( "ofxAssimpModelLoader" IN_LIST OFX_ADDONS_ACTIVE )
    include( ${OF_CMAKE_ADDONS}/internal/ofxAssimpModelLoader.cmake )
endif()

#if ( "" IN_LIST OFX_ADDONS_ACTIVE )
#include( ${OF_CMAKE_ADDONS}internal/ofxEmscripten.cmake )

# TODO automatic search for addOns .cmake files
#file( GLOB_RECURSE ALL_ADDON_FILES  "${OF_CMAKE_ADDONS}*.cmake" )
#include( ALL_ADDON_FILES )

# including all cpp files recursively
#file( GLOB_RECURSE OFX_OSC_CPP  "${OF_CMAKE_ADDONS}ofxOsc/*.cpp" )
#message( "Cpp-Tree: ${OFX_OSC_CPP}" )
