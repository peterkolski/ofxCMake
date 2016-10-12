# TODO Comments
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/internal/ofxOsc.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/internal/ofxXmlSettings.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/internal/ofxGui.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/internal/ofxKinect.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/internal/ofxNetwork.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/internal/ofxSvg.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/internal/ofxVectorGraphics.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/internal/ofxOpenCv.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/internal/ofxThreadedImageLoader.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/internal/ofxEmscripten.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/internal/ofxAssimpModelLoader.cmake )

# TODO automatic search for addOns .cmake files
#file( GLOB_RECURSE ALL_ADDON_FILES  "${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/*.cmake" )
#include( ALL_ADDON_FILES )

# including all cpp files recursively
#file( GLOB_RECURSE OFX_OSC_CPP  "${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/*.cpp" )
#message( "Cpp-Tree: ${OFX_OSC_CPP}" )
