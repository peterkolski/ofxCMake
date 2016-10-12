# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_XML_CPP
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxXmlSettings/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxXmlSettings/src"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxXmlSettings/libs" )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxXmlSettings
                STATIC
                ${OFX_XML_CPP} )
