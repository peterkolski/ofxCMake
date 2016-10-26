file(   GLOB_RECURSE
        OFX_PIMAPPER_CPP
        "${OF_CMAKE_ADDONS}/ofxPiMapper/src/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
                    "${OF_CMAKE_ADDONS}/ofxPiMapper/src"
                    )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxPiMapper
                STATIC
                ${OFX_PIMAPPER_CPP}
            )
