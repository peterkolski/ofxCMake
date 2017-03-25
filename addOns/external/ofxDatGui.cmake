# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file( GLOB_RECURSE OFX_DATGUI_CPP 
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxDatGui/src/*.cpp"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxDatGui/core/*.cpp"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxDatGui/libs/ofxSmartFont/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxDatGui/src"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxDatGui/src/components"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxDatGui/src/core"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxDatGui/src/libs/ofxSmartFont"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxDatGui/src/themes"
        )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxDatGui
                STATIC
                ${OFX_DATGUI_CPP}
                )


