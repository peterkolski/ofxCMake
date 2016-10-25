
set( NAME_ADDON ofxTwistedRibbon )
if( EXISTS ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/
    AND ${NAME_ADDON} IN_LIST OFX_ADDONS_ACTIVE)
    include( ${OF_CMAKE_ADDONS}/external/${NAME_ADDON}.cmake )
    message( WARNING "${NAME_ADDON} activated" )
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
