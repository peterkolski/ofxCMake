# =================================================================

set( NAME_ADDON     ofxDarknet )

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
add_library(  ${NAME_ADDON}   STATIC   ${OFX_ADDON_CPP} )

# -----------------------------------------------------------------
# ---------------------------- HEADERS ----------------------------
# -----------------------------------------------------------------
include_directories( ${PATH_SOURCE_ABSOLUTE}  )
include_directories( ${PATH_LIBS_ABSOLUTE}/darknet/include )


## --- CUDA
include_directories(
        /usr/local/cuda/include
        /opt/local/include
)

# -----------------------------------------------------------------
# ------------------------------ LIBS  ----------------------------
# -----------------------------------------------------------------
if( APPLE )
    target_link_libraries( ${NAME_ADDON}
            ${PATH_SOURCE_ABSOLUTE}/darknet/lib//osx/libdarknetOSX.dylib
            /usr/local/cuda/lib/libcudart.dylib
            /usr/local/cuda/lib/libcublas.dylib
            /usr/local/cuda/lib/libcurand.dylib
            /usr/local/cuda/lib/libcusparse.dylib
            )
endif()

