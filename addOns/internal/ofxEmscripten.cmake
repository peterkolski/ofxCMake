# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_EMSCRIPTEN_CPP
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxEmscripten/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxEmscripten/src"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxEmscripten/libs/html5audio/include"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxEmscripten/libs/html5video/include"
        )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxEmscripten
        STATIC
        ${OFX_EMSCRIPTEN_CPP} )
