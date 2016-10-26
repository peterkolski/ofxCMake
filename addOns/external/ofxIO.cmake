# -----------------------------------------------------------------
# --- Set the name of your AddOn
# -----------------------------------------------------------------

set( NAME_ADDON     ofxIO )

#==================================================================
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

file( GLOB_RECURSE   OFX_ADDON_CPP   "${PATH_LIBS}/*.cpp" )
file( GLOB_RECURSE   OFX_ADDON_CC    "${PATH_LIBS}/*.cc" )
file( GLOB_RECURSE   OFX_ADDON_C     "${PATH_LIBS}/*.c" )
add_library(  ${NAME_ADDON}   STATIC
        ${OFX_ADDON_CPP}
        ${OFX_ADDON_CC}
        ${OFX_ADDON_C} )

#find_source_files( OFX_ADDON_SOURCE PATH_LIBS_ABSOLUTE )
#add_library( ${NAME_ADDON}   STATIC ${OFX_ADDON_SOURCE} )

#message( WARNING "CPP ${NAME_ADDON}: ${OFX_ADDON_CPP}" )

# -----------------------------------------------------------------
# ---------------------------- HEADERS ----------------------------
# -----------------------------------------------------------------

include_directories(
        /Users/sonneundasche/programming/of/addons/ofxIO/src
        /Users/sonneundasche/programming/of/addons/ofxIO/libs/alphanum/include
        /Users/sonneundasche/programming/of/addons/ofxIO/libs/cpp-lru-cache/include
        /Users/sonneundasche/programming/of/addons/ofxIO/libs/json/include
        /Users/sonneundasche/programming/of/addons/ofxIO/libs/lz4/src
        /Users/sonneundasche/programming/of/addons/ofxIO/libs/ofxIO/include
        /Users/sonneundasche/programming/of/addons/ofxIO/libs/snappy/src )


# -----------------------------------------------------------------
# ------------------------------ LIBS  ----------------------------
# -----------------------------------------------------------------
