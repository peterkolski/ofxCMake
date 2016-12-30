# =================================================================
#
# Template for addOns WITH pre compiled libraries
#
# Easiest way: replace all the NAME into the name of your addOn
# It has to have the same name, as the directory it is in
# [e.g. ofxOneEuroFilter is in of/addons/ofxOneEuroFilter/]
#
# =================================================================

set( NAME_ADDON     ofxDarknet )       # <--- Set the name here

#==================================================================


# -----------------------------------------------------------------
# ---------------------------- PATHS ------------------------------
# -----------------------------------------------------------------
set( PATH_SOURCE    ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/src )
set( PATH_LIBS      ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/libs )

# --- Setting abolute path to prevent errors
get_filename_component( PATH_SOURCE_ABSOLUTE ${PATH_SOURCE} ABSOLUTE)
get_filename_component( PATH_LIBS_ABSOLUTE ${PATH_LIBS} ABSOLUTE)

# -----------------------------------------------------------------
# ---------------------------- SOURCE -----------------------------
# -----------------------------------------------------------------

file( GLOB_RECURSE   OFX_ADDON_CPP          "${PATH_SOURCE_ABSOLUTE}/*.cpp" )
#file( GLOB_RECURSE   OFX_ADDON_LIBS_CPP     "${PATH_LIBS_ABSOLUTE}/*.cpp" ) #should be in the compiles lib
add_library(  ${NAME_ADDON}   STATIC   ${OFX_ADDON_CPP} ${OFX_ADDON_LIBS_CPP} )

# -----------------------------------------------------------------
# ---------------------------- HEADERS ----------------------------
# -----------------------------------------------------------------

OF_find_header_directories( HEADERS_SOURCE ${PATH_SOURCE_ABSOLUTE} )
include_directories( ${HEADERS_SOURCE} )

OF_find_header_directories( HEADERS_LIBS ${PATH_LIBS_ABSOLUTE} )
include_directories( ${HEADERS_LIBS} )

# --- CUDA
include_directories(
        /usr/local/cuda/include
        /opt/local/include )

# -----------------------------------------------------------------
# ------------------------------ LIBS  ----------------------------
# -----------------------------------------------------------------

# -----------------------------------------------------------------
# --- In case OS specific libs are needed
# --- Be sure to link them in target_link_libraries()
# -----------------------------------------------------------------

if( APPLE )
    target_link_libraries( ofxDarknet
            "${OF_CMAKE_ADDONS}/${NAME_ADDON}/libs/darknet/lib/libdarknetCUDA.dylib"
            /usr/local/cuda/lib/libcudart.dylib
            /usr/local/cuda/lib/libcublas.dylib
            /usr/local/cuda/lib/libcurand.dylib
            /usr/local/cuda/lib/libcusparse.dylib
            )
endif()

