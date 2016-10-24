
if( EXISTS ${OF_DIRECTORY_ABSOLUTE}/addons/ofxTwistedRibbon/ )
    include( ${OF_CMAKE_ADDONS}/external/ofxTwistedRibbon.cmake )
endif()

if( EXISTS ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOneEuroFilter/ )
include( ${OF_CMAKE_ADDONS}/external/ofxOneEuroFilter.cmake )
endif()

if( EXISTS ${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/ )
    include( ${OF_CMAKE_ADDONS}/external/ofxFlowTools.cmake )
endif()

if( EXISTS ${OF_DIRECTORY_ABSOLUTE}/addons/ofxMidi/ )
    include( ${OF_CMAKE_ADDONS}/external/ofxMidi.cmake )
endif()
