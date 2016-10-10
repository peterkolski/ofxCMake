# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file( GLOB_RECURSE OFX_MIDI_CPP
        "${OF_DIRECTORY}/addons/ofxMidi/src/*.cpp"
        "${OF_DIRECTORY}/addons/ofxMidi/libs/rtmidi/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY}/addons/ofxMidi/src"
        "${OF_DIRECTORY}/addons/ofxMidi/src/desktop"
        "${OF_DIRECTORY}/addons/ofxMidi/libs/rtmidi"
        )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxMidi
                STATIC
                ${OFX_MIDI_CPP} )
