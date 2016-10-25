
set( NAME_ADDON ofxTwistedRibbon )
if( EXISTS ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/
    AND ${NAME_ADDON} IN_LIST OFX_ADDONS_ACTIVE)
    include( ${OF_CMAKE_ADDONS}/external/${NAME_ADDON}.cmake )
    message( STATUS "${NAME_ADDON} activated" )
else()
    message( WARNING "${NAME_ADDON} folder not found" )
endif()

set( NAME_ADDON ofxOneEuroFilter )
if( EXISTS ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/
        AND ${NAME_ADDON} IN_LIST OFX_ADDONS_ACTIVE)
    include( ${OF_CMAKE_ADDONS}/external/${NAME_ADDON}.cmake )
    message( STATUS "${NAME_ADDON} activated" )
else()
    message( WARNING "${NAME_ADDON} folder not found" )
endif()

set( NAME_ADDON ofxFlowTools )
if( EXISTS ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/
        AND ${NAME_ADDON} IN_LIST OFX_ADDONS_ACTIVE)
    include( ${OF_CMAKE_ADDONS}/external/${NAME_ADDON}.cmake )
    message( STATUS "${NAME_ADDON} activated" )
else()
    message( WARNING "${NAME_ADDON} folder not found" )
endif()

set( NAME_ADDON ofxMidi )
if( EXISTS ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/
        AND ${NAME_ADDON} IN_LIST OFX_ADDONS_ACTIVE)
    include( ${OF_CMAKE_ADDONS}/external/${NAME_ADDON}.cmake )
    message( STATUS "${NAME_ADDON} activated" )
else()
    message( WARNING "${NAME_ADDON} folder not found" )
endif()

