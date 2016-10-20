# TODO Comments
include( ${OF_CMAKE_ADDONS}/internal/ofxOsc.cmake )
include( ${OF_CMAKE_ADDONS}/internal/ofxXmlSettings.cmake )
include( ${OF_CMAKE_ADDONS}/internal/ofxGui.cmake )
include( ${OF_CMAKE_ADDONS}/internal/ofxKinect.cmake )
include( ${OF_CMAKE_ADDONS}/internal/ofxNetwork.cmake )
include( ${OF_CMAKE_ADDONS}/internal/ofxSvg.cmake )
include( ${OF_CMAKE_ADDONS}/internal/ofxVectorGraphics.cmake )
include( ${OF_CMAKE_ADDONS}/internal/ofxOpenCv.cmake )
include( ${OF_CMAKE_ADDONS}/internal/ofxThreadedImageLoader.cmake )
include( ${OF_CMAKE_ADDONS}/internal/ofxAssimpModelLoader.cmake )
#include( ${OF_CMAKE_ADDONS}internal/ofxEmscripten.cmake )

# TODO automatic search for addOns .cmake files
#file( GLOB_RECURSE ALL_ADDON_FILES  "${OF_CMAKE_ADDONS}*.cmake" )
#include( ALL_ADDON_FILES )

# including all cpp files recursively
#file( GLOB_RECURSE OFX_OSC_CPP  "${OF_CMAKE_ADDONS}ofxOsc/*.cpp" )
#message( "Cpp-Tree: ${OFX_OSC_CPP}" )
