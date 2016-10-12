# =================================================================
#
# Template for a static approach
# WITHOUT extra libraries
# static -> .cmake file is in the '/of/CMake/addons/' folder
#
# Easiest way: replace all the NAME into the name of your addOn
#
# =================================================================


# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# --- NOTE: Ensure not to include an example folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_NAME_CPP                            # Set internal placeholder name (unique one)
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxNAME/*.cpp"     # Set the directory of your Addon
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
                    "${OF_DIRECTORY_ABSOLUTE}/addons/ofxNAME/src"   # Set the directory of your Addon
                    )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxNAME              # Set the name of the addOn
                STATIC
                ${OFX_NAME_CPP}      # Set the name
            )
