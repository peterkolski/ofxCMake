#---------------------------------------------------------------------------------
#------------------------------- ofxXmlSettings ----------------------------------
#---------------------------------------------------------------------------------

file( GLOB_RECURSE OFX_XML_CPP  "${OF_DIRECTORY}/addons/ofxXmlSettings/*.cpp" )

include_directories(    "${OF_DIRECTORY}/addons/ofxXmlSettings/src"
        "${OF_DIRECTORY}/addons/ofxXmlSettings/libs" )

add_library( ofxXmlSettings STATIC ${OFX_XML_CPP} )
