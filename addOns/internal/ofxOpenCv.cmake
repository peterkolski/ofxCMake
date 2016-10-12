# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_OPENCV_CPP
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxOpenCv/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxOpenCv/src"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxOpenCv/libs/opencv/include"
        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxOpenCv/libs/opencv/include/opencv"
        )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxOpenCv
                STATIC
                ${OFX_OPENCV_CPP} )

# -----------------------------------------------------------------
# --- Setting a compiled lib
# -----------------------------------------------------------------
#TODO Libs for other OS (Win & Linux)

if( APPLE )
    find_library( CORE_FOUNDATION_LIB_OPENCV  CoreFoundation)
    find_library( ZLIB_OPENCV z )

    set(    ofxOpenCvLib "${OF_DIRECTORY_ABSOLUTE}/addons/ofxOpenCv/libs/opencv/lib/osx/opencv.a" )
    set(    EXTRA_LIBS_OPENCV
            ${CORE_FOUNDATION_LIB_OPENCV}
            ${ZLIB_OPENCV}
            ${ofxOpenCvLib}
            )
endif()

target_link_libraries(  ofxOpenCv ${EXTRA_LIBS_OPENCV} )