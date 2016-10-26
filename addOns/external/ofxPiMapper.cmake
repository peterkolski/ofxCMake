# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_PIMAPPER_CPP
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxPiMapper/src/*.cpp" )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

HEADER_DIRECTORIES( headerList ${OF_DIRECTORY_ABSOLUTE}/addons/ofxPiMapper/src )

include_directories( ${headerList} )

#message( WARNING "Paths: ${headerList}" )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------


add_library(    ofxPiMapper
        STATIC
        ${OFX_PIMAPPER_CPP} )
