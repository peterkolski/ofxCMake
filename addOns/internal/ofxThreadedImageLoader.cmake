# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_THREADEDIMAGELOADER_CPP
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxThreadedImageLoader/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(    "${OF_DIRECTORY_ABSOLUTE}/addons/ofxThreadedImageLoader/src" )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxThreadedImageLoader
        STATIC
        ${OFX_THREADEDIMAGELOADER_CPP} )
