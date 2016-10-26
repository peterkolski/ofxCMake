# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

set( NAME_ADDON     ofxPiMapper )
#set( PATH_SOURCE    ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/src )
#message( WARNING "Path: ${PATH_SOURCE}")

# -----------------------------------------------------------------


file( GLOB_RECURSE   OFX_PIMAPPER_CPP   "${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/src/*.cpp" )

#message( WARNING "Paths: ${OFX_PIMAPPER_CPP}" )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

HEADER_DIRECTORIES( headerList ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/src )

include_directories( ${headerList} )

#message( WARNING "Paths: ${headerList}" )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------


add_library(  ${NAME_ADDON}   STATIC   ${OFX_PIMAPPER_CPP} )
