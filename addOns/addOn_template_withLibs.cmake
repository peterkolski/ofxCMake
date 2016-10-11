# =================================================================
#
# Template for a static approach
# WITH libraries
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
        "${OF_DIRECTORY}/addons/ofxNAME/*.cpp"     # Set the directory of your Addon
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY}/addons/ofxNAME/src"   # Set the directory of your Addon
)

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# --- (Creates actually a library)
# -----------------------------------------------------------------

add_library(    ofxNAME              # Set the name of the addOn
                STATIC
                ${OFX_NAME_CPP}      # Set the name
                )

# -----------------------------------------------------------------
# --- In case OS specific libs are needed
# --- Be sure to link them in target_link_libraries()
# -----------------------------------------------------------------

#if( APPLE )
#    find_library( CORE_FOUNDATION_LIB_NAME  CoreFoundation)
#    set(    EXTRA_LIBS_NAME
#            ${CORE_FOUNDATION_LIB_MIDI}
#            )
#endif()



#target_link_libraries( ofxNAME
#        ${EXTRA_LIBS_NAME}
#        )