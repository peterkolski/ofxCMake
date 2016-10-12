#TODO Linking with i368 libraries
# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_ASSIMPIMAGELOADER_CPP
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxAssimpModelLoader/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxAssimpModelLoader/src"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxAssimpModelLoader/libs/assimp/include"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxAssimpModelLoader/libs/assimp/include/assimp/Compiler"
                    )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxAssimpModelLoader
        STATIC
        ${OFX_ASSIMPIMAGELOADER_CPP} )

# -----------------------------------------------------------------
# --- Setting a compiled lib
# -----------------------------------------------------------------

#TODO Libs for other OS (Win & Linux)
if( APPLE )
    set(    ofxAssimpLib  "${OF_DIRECTORY_ABSOLUTE}/addons/ofxAssimpModelLoader/libs/assimp/lib/osx/assimp.a" )
    set(    EXTRA_LIBS_ASSIMP
            ${ofxAssimpLib}
            )
endif()

target_link_libraries(  ofxAssimpModelLoader ${EXTRA_LIBS_ASSIMP} )
