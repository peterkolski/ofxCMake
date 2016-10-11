# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file( GLOB_RECURSE OFX_MIDI_CPP
        "${OF_DIRECTORY}/addons/ofxMidi/src/*.cpp"
        "${OF_DIRECTORY}/addons/ofxMidi/libs/*.cpp"
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
                ${OFX_MIDI_CPP}
                )

if( APPLE )
        find_library( CORE_FOUNDATION_LIB_MIDI  CoreFoundation)
        find_library( COREMIDI                  CoreMIDI )
        find_library( CORE_AUDIO_LIB_MIDI       CoreAudio)
endif()


#TODO into if-end?
target_link_libraries( ofxMidi
                        ${COREMIDI}
                        ${CORE_FOUNDATION_LIB_MIDI}
                        ${CORE_AUDIO_LIB_MIDI}
                        )