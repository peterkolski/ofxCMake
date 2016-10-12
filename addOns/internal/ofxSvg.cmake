# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_SVG_CPP
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxSvg/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxSvg/src"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxSvg/libs/svgTiny/src"
        )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxSvg
                STATIC
                ${OFX_SVG_CPP} )

# -----------------------------------------------------------------
# --- Setting a compiled lib
# -----------------------------------------------------------------

set(    EXTRA_LIBS_SVG
        ${OF_DIRECTORY_ABSOLUTE}/libs/poco/lib/osx/PocoXML.a)

target_link_libraries(  ofxSvg ${EXTRA_LIBS_SVG} )