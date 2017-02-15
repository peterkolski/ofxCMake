
set( NAME_ADDON     ofxSyphon )       # <--- Set the name here

#==================================================================


# -----------------------------------------------------------------
# ---------------------------- PATHS ------------------------------
# -----------------------------------------------------------------
set( PATH_SRC    ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/src )
set( PATH_LIBS      ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/libs )

# -----------------------------------------------------------------
# ---------------------------- SOURCE -----------------------------
# -----------------------------------------------------------------

#file( GLOB_RECURSE   OFX_ADDON_CPP          "${PATH_SRC}/*.cpp" )
#file( GLOB_RECURSE   OFX_ADDON_LIBS_CPP     "${PATH_LIBS}/*.cpp" )

set( OFX_ADDON_CPP
        ${PATH_SRC}/ofxSyphonClient.mm
        ${PATH_SRC}/ofxSyphonServer.mm
        ${PATH_SRC}/ofxSyphonServerDirectory.mm
        )

set( OFX_ADDON_LIBS_CPP
        ${PATH_LIBS}/Syphon/src/SyphonNameboundClient.m
        )

add_library(  ${NAME_ADDON}   STATIC   ${OFX_ADDON_CPP} ${OFX_ADDON_LIBS_CPP} )

# -----------------------------------------------------------------
# ---------------------------- HEADERS ----------------------------
# -----------------------------------------------------------------

OF_find_header_directories( HEADERS_SOURCE ${PATH_SRC} )
OF_find_header_directories( HEADERS_LIBS ${PATH_LIBS} )

include_directories( ${HEADERS_SOURCE} )
include_directories( ${HEADERS_LIBS} )


IF(APPLE)
    FIND_LIBRARY( Syphon_LIBRARY Syphon ${PATH_LIBS}/libs/Syphon/lib/osx )
    FIND_LIBRARY( core_Foundation CoreFoundation )
#    find_library( CORE_FOUNDATION_LIB_KINECT  CoreFoundation)
#    find_library( IOKIT_LIB_KINECT  IOKit)
    find_library( COCOA_LIB_SYPHON  Cocoa)
    target_link_libraries( ${NAME_ADDON} ${Syphon_LIBRARY} ${core_Foundation} ${COCOA_LIB_SYPHON} )
ENDIF (APPLE)