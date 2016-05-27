#---------------------------------------------------------------------------------
#------------------------------- ofxGui ----------------------------------
#---------------------------------------------------------------------------------

file( GLOB_RECURSE OFX_GUI_CPP  "${OF_DIRECTORY}/addons/ofxGui/*.cpp" )

include_directories(    "${OF_DIRECTORY}/addons/ofxGui/src" )

add_library( ofxGui STATIC ${OFX_GUI_CPP} )
