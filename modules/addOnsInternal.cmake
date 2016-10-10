

# including all cpp files recursively
#file( GLOB_RECURSE OFX_OSC_CPP  "${OF_DIRECTORY}/addons/ofxOsc/*.cpp" )
#message( "Cpp-Tree: ${OFX_OSC_CPP}" )

include( ${OF_DIRECTORY}/CMake/addOns/internal/ofxOsc.cmake )
include( ${OF_DIRECTORY}/CMake/addOns/internal/ofxXmlSettings.cmake )
include( ${OF_DIRECTORY}/CMake/addOns/internal/ofxGui.cmake )
include( ${OF_DIRECTORY}/CMake/addOns/internal/ofxKinect.cmake )
include( ${OF_DIRECTORY}/CMake/addOns/internal/ofxNetwork.cmake )

# ----- SKIZZE ---------
#file( GLOB_RECURSE ALL_ADDON_FILES  "${OF_DIRECTORY}/CMake/addOns/*.cmake" )
#include( ALL_ADDON_FILES )
