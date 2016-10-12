# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_NETWORK_CPP
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxNetwork/src/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories( "${OF_DIRECTORY_ABSOLUTE}/addons/ofxNetwork/src" )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxNetwork
                STATIC
                ${OFX_NETWORK_CPP} )
