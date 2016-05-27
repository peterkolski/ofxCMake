#---------------------------------------------------------------------------------
#------------------------------------- ofxOsc ------------------------------------
#---------------------------------------------------------------------------------
set( OFX_OSC_CPP
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/ip/IpEndpointName.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/ip/posix/NetworkingUtils.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/ip/posix/UdpSocket.cpp
#        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/ip/win32/NetworkingUtils.cpp
#        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/ip/win32/UdpSocket.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/osc/OscOutboundPacketStream.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/osc/OscPrintReceivedElements.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/osc/OscReceivedElements.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/osc/OscTypes.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/src/ofxOscBundle.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/src/ofxOscMessage.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/src/ofxOscParameterSync.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/src/ofxOscReceiver.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/src/ofxOscSender.cpp )

include_directories(    "${OF_DIRECTORY}/addons/ofxOsc/src"
                        "${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src"
                        "${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/ip"
                        "${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/osc" )

add_library( ofxOsc STATIC ${OFX_OSC_CPP} )
