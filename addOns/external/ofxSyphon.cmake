
set( NAME_ADDON     ofxSyphon )

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



# -----------------------------------------------------------------
# ----------------------------- LIBS ------------------------------
# -----------------------------------------------------------------


IF(APPLE)
#    find_library( Syphon_LIBRARY Syphon ${PATH_LIBS}/libs/Syphon/lib/osx REQUIRED ) #It should be possible to set a relative path
    find_library( Syphon_LIBRARY Syphon REQUIRED )
    message( "NOTE: Copy the Syphon framework into /Library/Frameworks/" )
    find_library( core_Foundation_SYPHON CoreFoundation REQUIRED )
    find_library( COCOA_LIB_SYPHON  Cocoa REQUIRED )
    target_link_libraries( ${NAME_ADDON} ${Syphon_LIBRARY} ${core_Foundation_SYPHON} ${COCOA_LIB_SYPHON} )
ENDIF (APPLE)