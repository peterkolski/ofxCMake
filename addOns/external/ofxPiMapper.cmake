# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

set( NAME_ADDON     ofxPiMapper )

#==================================================================
#==================================================================
# -----------------------------------------------------------------
# ---------------------------- PATHS ------------------------------
# -----------------------------------------------------------------
set( PATH_SOURCE    ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/src )
set( PATH_LIBS      ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/libs )
message( WARNING "Path ${NAME_ADDON}: ${PATH_LIBS}")

# --- Setting abolute path to prevent errors
get_filename_component( PATH_SOURCE_ABSOLUTE ${PATH_SOURCE} ABSOLUTE)
get_filename_component( PATH_LIBS_ABSOLUTE ${PATH_LIBS} ABSOLUTE)

message( WARNING "Path absolute ${NAME_ADDON}: ${PATH_LIBS_ABSOLUTE}")

# -----------------------------------------------------------------
# ---------------------------- SOURCE -----------------------------
# -----------------------------------------------------------------

file( GLOB_RECURSE   OFX_ADDON_CPP   "${PATH_SOURCE_ABSOLUTE}/*.cpp" )
add_library(  ${NAME_ADDON}   STATIC   ${OFX_ADDON_CPP} )
#message( WARNING "CPP ${NAME_ADDON}: ${OFX_ADDON_CPP}" )

# -----------------------------------------------------------------
# ---------------------------- HEADERS ----------------------------
# -----------------------------------------------------------------

HEADER_DIRECTORIES( HEADERS_SOURCE ${PATH_SOURCE_ABSOLUTE} )
include_directories( ${HEADERS_SOURCE} )

HEADER_DIRECTORIES( HEADERS_LIBS ${PATH_LIBS_ABSOLUTE} )
include_directories( ${HEADERS_LIBS} )

message( WARNING "Header paths ${NAME_ADDON}: ${HEADERS_LIBS}" )


# -----------------------------------------------------------------
# ------------------------------ LIBS  ----------------------------
# -----------------------------------------------------------------
