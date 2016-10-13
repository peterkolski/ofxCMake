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
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound/ofBaseSoundStream.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound/ofFmodSoundPlayer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound/ofOpenALSoundPlayer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound/ofRtAudioSoundStream.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound/ofSoundBuffer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound/ofSoundPlayer.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/sound/ofSoundStream.cpp
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
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofAVFoundationVideoPlayer.m
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofAVFoundationPlayer.mm
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofQTKitGrabber.mm
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofQTKitMovieRenderer.m
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofQTKitPlayer.mm
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofQtUtils.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofQuickTimeGrabber.cpp
        ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofQuickTimePlayer.cpp

        # TODO: Not working right now
        # ======== For Windows ========
        # ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofDirectShowGrabber.cpp
        # ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofDirectShowPlayer.cpp
        # ======== For Linux ========
        # ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofGstUtils.cpp
        # ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofGstVideoGrabber.cpp
        # ${OF_DIRECTORY_ABSOLUTE}/libs/openFrameworks/video/ofGstVideoPlayer.cpp
        )
# TODO do I install them into /libs from here?
# ========================================================
