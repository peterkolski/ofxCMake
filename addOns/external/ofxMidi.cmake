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

if( APPLE )
        find_library( corefoundation_lib_2      CoreFoundation)
        find_library( COREMIDI                  CoreMIDI )
        find_library( coreaudio_lib_2           CoreAudio)
endif()

add_library(    ofxMidi
                STATIC
                ${OFX_MIDI_CPP}
        )

#TODO into if-end?
target_link_libraries( ofxMidi
                        ${COREMIDI}
                        ${corefoundation_lib_2}
                        ${coreaudio_lib_2}
                        )