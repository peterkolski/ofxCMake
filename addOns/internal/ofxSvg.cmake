# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_SVG_CPP
        "${OF_DIRECTORY}/addons/ofxSvg/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY}/addons/ofxSvg/src"
        "${OF_DIRECTORY}/addons/ofxSvg/libs/svgTiny/src"
        )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxSvg
        STATIC
        ${OFX_SVG_CPP} )

#TODO include Libs