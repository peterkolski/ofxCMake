#---------------------------------------------------------------------------------
#------------------------------- ofxMidi ----------------------------------
#---------------------------------------------------------------------------------

file( GLOB_RECURSE OFX_MIDI_CPP
        "${OF_DIRECTORY}/addons/ofxMidi/src/*.cpp"
        "${OF_DIRECTORY}/addons/ofxMidi/libs/rtmidi/*.cpp"
        )

include_directories(
        "${OF_DIRECTORY}/addons/ofxMidi/src"
        "${OF_DIRECTORY}/addons/ofxMidi/src/desktop"
        "${OF_DIRECTORY}/addons/ofxMidi/libs/rtmidi"
        )

add_library( ofxMidi STATIC ${OFX_MIDI_CPP} )
