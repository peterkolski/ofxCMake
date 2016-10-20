
list( APPEND OF_SOURCE_FILES
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofDirectShowGrabber.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofDirectShowPlayer.cpp
        )

include_directories( "${OF_DIRECTORY_ABSOLUTE}/src/videoinput" )

#--------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------

set(OF_AUDIO ON) # Do not turn off
set(OF_VIDEO ON) # Do not turn off

set(OF_32BIT OFF CACHE BOOL "Compile for 32-bit architectures")

set(VIDEOINPUT_SOURCES
        "${OF_ROOT_DIR}/src/videoinput/videoInput.cpp"
        )


if(OF_STATIC)
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE "${OF_ROOT_DIR}/lib-windows/release-${OF_PLATFORM}-${ARCH_BIT}")
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG   "${OF_ROOT_DIR}/lib-windows/debug-${OF_PLATFORM}-${ARCH_BIT}")
else()
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${OF_ROOT_DIR}/lib-windows/release-${OF_PLATFORM}-${ARCH_BIT}")
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG   "${OF_ROOT_DIR}/lib-windows/debug-${OF_PLATFORM}-${ARCH_BIT}")
endif()

set(OPENFRAMEWORKS_DEFINITIONS
        -D_WIN32_WINNT=0x0501
        -DOF_USING_MPG123
        -DOF_SOUNDSTREAM_RTAUDIO
        -DOF_SOUND_PLAYER_OPENAL
        -DOF_VIDEO_CAPTURE_DIRECTSHOW
        -DOF_VIDEO_PLAYER_DIRECTSHOW
        )

pkg_check_modules(CAIRO REQUIRED cairo)
pkg_check_modules(FONTCONFIG REQUIRED fontconfig)

find_package(OpenAL REQUIRED)
find_package(OpenGL REQUIRED)
find_package(MPG123 REQUIRED)
find_package(Freetype REQUIRED)
find_package(Boost COMPONENTS filesystem system REQUIRED)

list(APPEND OPENFRAMEWORKS_INCLUDE_DIRS
        ${CAIRO_INCLUDE_DIRS}
        ${Boost_INCLUDE_DIRS}
        ${OPENAL_INCLUDE_DIR}
        ${OPENGL_INCLUDE_DIR}
        ${MPG123_INCLUDE_DIRS}
        ${FREETYPE_INCLUDE_DIRS}
        ${FONTCONFIG_INCLUDE_DIRS}
        )

if(CMAKE_SYSTEM MATCHES Windows)
    add_dependencies(
            openFrameworks
            videoinput
    )
endif()

if(CMAKE_SYSTEM MATCHES Windows)
    target_link_libraries(
            videoinput
            ${STRMIIDS_LIB}
    )
endif()

if(CMAKE_SYSTEM MATCHES Windows)
    list(APPEND OPENFRAMEWORKS_LIBRARIES
            videoinput
            )
endif()

# --- Shared



#--------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------

set(OPENFRAMEWORKS_DEFINITIONS
        -DOF_USING_MPG123
        -DOF_SOUNDSTREAM_RTAUDIO
        -DOF_SOUND_PLAYER_OPENAL
        -DOF_VIDEO_CAPTURE_DIRECTSHOW
        -DOF_VIDEO_PLAYER_DIRECTSHOW
        )

if(CMAKE_BUILD_TYPE MATCHES Release)
    set(OF_LIB_DIR "${OF_ROOT_DIR}/lib-windows/release-${OF_PLATFORM}-${ARCH_BIT}")
elseif(CMAKE_BUILD_TYPE MATCHES Debug)
    set(OF_LIB_DIR "${OF_ROOT_DIR}/lib-windows/debug-${OF_PLATFORM}-${ARCH_BIT}")
endif()


if(NOT OF_CONSOLE)
    list(APPEND OPENFRAMEWORKS_LIBRARIES -mwindows)
endif()


list(APPEND OPENFRAMEWORKS_DEFINITIONS
        -DWIN32
        -DWINVER=0x0500
        -D_WIN32_WINNT=0x0501
        -D_UNICODE
        -DUNICODE
    )

list(APPEND OFXSOURCES
        "${OFXADDON_DIR}/libs/oscpack/src/ip/win32/NetworkingUtils.cpp"
        "${OFXADDON_DIR}/libs/oscpack/src/ip/win32/UdpSocket.cpp"
        )


# TODO Include OS specific Libs