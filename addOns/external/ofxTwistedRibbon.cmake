#---------------------------------------------------------------------------------
#------------------------------- ofxTwistedRibbon ----------------------------------
#---------------------------------------------------------------------------------

file( GLOB_RECURSE OFX_TWISTEDRIBBON_CPP  "${OF_DIRECTORY}/addons/ofxTwistedRibbon/src/*.cpp" )

include_directories(    "${OF_DIRECTORY}/addons/ofxTwistedRibbon/src" )

add_library( ofxTwistedRibbon STATIC ${OFX_TWISTEDRIBBON_CPP} )
