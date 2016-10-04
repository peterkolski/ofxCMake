#---------------------------------------------------------------------------------
#------------------------------- ofxOneEuroFilter ----------------------------------
#---------------------------------------------------------------------------------

file( GLOB_RECURSE OFX_ONEEUROFILTER_CPP  "${OF_DIRECTORY}/addons/ofxOneEuroFilter/src/*.cpp" )

include_directories(    "${OF_DIRECTORY}/addons/ofxOneEuroFilter/src" )

add_library( ofxOneEuroFilter STATIC ${OFX_ONEEUROFILTER_CPP} )
