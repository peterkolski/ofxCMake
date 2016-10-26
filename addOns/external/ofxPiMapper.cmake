# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

set( NAME_ADDON     ofxPiMapper )
set( PATH_SOURCE    ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/src )
#set( PATH_LIBS      ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/libs )
#message( WARNING "Path ${NAME_ADDON}: ${PATH_SOURCE}")
# -----------------------------------------------------------------

get_filename_component( PATH_SOURCE_ABSOLUTE ${PATH_SOURCE} ABSOLUTE)
#message( WARNING "Path absolute ${NAME_ADDON}: ${PATH_SOURCE}")

file( GLOB_RECURSE   OFX_ADDON_CPP   "${PATH_SOURCE_ABSOLUTE}/*.cpp" )
#message( WARNING "CPP ${NAME_ADDON}: ${OFX_ADDON_CPP}" )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

HEADER_DIRECTORIES( headerList ${PATH_SOURCE_ABSOLUTE} )

include_directories( ${headerList} )
message( WARNING "Header paths ${NAME_ADDON}: ${headerList}" )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------


add_library(  ${NAME_ADDON}   STATIC   ${OFX_ADDON_CPP} )
