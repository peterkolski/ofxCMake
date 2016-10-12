# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_FLOWTOOLS_CPP
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/src/*.cpp" )
# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/src"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/src/drawforces"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/src/filters"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/src/fluid"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/src/mask"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/src/opticalflow"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/src/particles"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/src/splitvelocity"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/src/tools"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxFlowTools/src/visualisation"
)

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxFlowTools
                STATIC
                ${OFX_FLOWTOOLS_CPP} )
