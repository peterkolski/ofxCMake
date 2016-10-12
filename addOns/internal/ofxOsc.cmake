# -----------------------------------------------------------------
# --- NO script applied, as there are different
# --- versions for each plattform
# -----------------------------------------------------------------

# TODO Windows libs
set( OFX_OSC_CPP
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src/ip/IpEndpointName.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src/ip/posix/NetworkingUtils.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src/ip/posix/UdpSocket.cpp
#        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src/ip/win32/NetworkingUtils.cpp
#        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src/ip/win32/UdpSocket.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src/osc/OscOutboundPacketStream.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src/osc/OscPrintReceivedElements.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src/osc/OscReceivedElements.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src/osc/OscTypes.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/src/ofxOscBundle.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/src/ofxOscMessage.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/src/ofxOscParameterSync.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/src/ofxOscReceiver.cpp
        ${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/src/ofxOscSender.cpp )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(    "${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/src"
                        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src"
                        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src/ip"
                        "${OF_DIRECTORY_ABSOLUTE}/addons/ofxOsc/libs/oscpack/src/osc" )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------


add_library( ofxOsc STATIC ${OFX_OSC_CPP} )
