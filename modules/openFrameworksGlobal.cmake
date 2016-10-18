# ============================================================================
# ---------------------------- Source Files ----------------------------------

set(OF_SOURCE_FILES
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/3d/of3dPrimitives.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/3d/of3dUtils.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/3d/ofCamera.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/3d/ofEasyCam.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/3d/ofMesh.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/3d/ofNode.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/app/ofAppGLFWWindow.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/app/ofAppGlutWindow.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/app/ofAppNoWindow.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/app/ofAppRunner.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/app/ofMainLoop.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/communication/ofArduino.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/communication/ofSerial.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/events/ofEvents.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl/ofBufferObject.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl/ofFbo.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl/ofGLProgrammableRenderer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl/ofGLRenderer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl/ofGLUtils.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl/ofLight.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl/ofMaterial.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl/ofShader.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl/ofTexture.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl/ofVbo.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl/ofVboMesh.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics/of3dGraphics.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics/ofBitmapFont.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics/ofCairoRenderer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics/ofGraphics.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics/ofImage.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics/ofPath.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics/ofPixels.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics/ofPolyline.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics/ofRendererCollection.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics/ofTessellator.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics/ofTrueTypeFont.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/math/ofMath.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/math/ofMatrix3x3.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/math/ofMatrix4x4.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/math/ofQuaternion.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/math/ofVec2f.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/math/ofVec4f.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound/ofFmodSoundPlayer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound/ofOpenALSoundPlayer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound/ofSoundBuffer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound/ofSoundPlayer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/types/ofBaseTypes.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/types/ofColor.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/types/ofParameter.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/types/ofParameterGroup.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/types/ofRectangle.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/utils/ofFileUtils.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/utils/ofFpsCounter.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/utils/ofLog.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/utils/ofMatrixStack.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/utils/ofSystemUtils.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/utils/ofThread.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/utils/ofTimer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/utils/ofURLFileLoader.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/utils/ofUtils.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/utils/ofXml.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofVideoGrabber.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofVideoPlayer.cpp
        )
# ============================================================================
# ----------------------------- Include Folders-------------------------------
set(HEADER_OF_0 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks)
set(HEADER_OF_1 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/3d)
set(HEADER_OF_2 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/app)
set(HEADER_OF_3 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/communication)
set(HEADER_OF_4 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/events)
set(HEADER_OF_5 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/gl)
set(HEADER_OF_6 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/graphics)
set(HEADER_OF_7 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/math)
set(HEADER_OF_8 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound)
set(HEADER_OF_9 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/types)
set(HEADER_OF_10 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/utils)
set(HEADER_OF_11 ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video)
set(HEADER_FREETYPE ${OF_DIRECTORY_ABSOLUTE}/libs/freetype/include)
set(HEADER_FREETYPE2 ${OF_DIRECTORY_ABSOLUTE}/libs/freetype/include/freetype2)
set(HEADER_POCO ${OF_DIRECTORY_ABSOLUTE}/libs/poco/include)
set(HEADER_FMODEX ${OF_DIRECTORY_ABSOLUTE}/libs/fmodex/include)
set(HEADER_FREEIMAGE ${OF_DIRECTORY_ABSOLUTE}/libs/FreeImage/include)
set(HEADER_TESS2 ${OF_DIRECTORY_ABSOLUTE}/libs/tess2/include)
set(HEADER_GLFW ${OF_DIRECTORY_ABSOLUTE}/libs/glfw/include)
set(HEADER_UTF8 ${OF_DIRECTORY_ABSOLUTE}/libs/utf8cpp/include)

set(HEADER_GLEW ${OF_DIRECTORY_ABSOLUTE}/libs/glew/include)
set(HEADER_SSL ${OF_DIRECTORY_ABSOLUTE}/libs/openssl/include)
set(HEADER_CAIRO ${OF_DIRECTORY_ABSOLUTE}/libs/cairo/include/cairo)
set(HEADER_RTAUDIO ${OF_DIRECTORY_ABSOLUTE}/libs/rtAudio/include)
set(HEADER_BOOST ${OF_DIRECTORY_ABSOLUTE}/libs/boost/include)


# ============================================================================
# ---------------------- Putting them into one list --------------------------
set( OF_CORE_HEADERS
        ${HEADER_OF_0} ${HEADER_OF_1} ${HEADER_OF_2} ${HEADER_OF_3} ${HEADER_OF_4} ${HEADER_OF_5}
        ${HEADER_OF_6} ${HEADER_OF_7} ${HEADER_OF_8} ${HEADER_OF_9} ${HEADER_OF_10} ${HEADER_OF_11}
        ${HEADER_POCO}
        ${HEADER_FREETYPE} ${HEADER_FREETYPE2}
        ${HEADER_FMODEX}
        ${HEADER_GLEW}
        ${HEADER_FREEIMAGE}
        ${HEADER_TESS2}
        ${HEADER_CAIRO}
        ${HEADER_RTAUDIO}
        ${HEADER_GLFW}
        ${HEADER_SSL}
        ${HEADER_UTF8}
        ${HEADER_BOOST})