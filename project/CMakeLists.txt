#THIS FILE SHOULD BE PUT INTO THE OF PROJECT FOLDER

# ========================================================
# ===================== CMake Settings ===================
# ========================================================
cmake_minimum_required(VERSION 2.8.4)
cmake_policy(SET CMP0042 NEW)

# ========================================================
# ===================== User Settings ====================
# ========================================================
# ------------------------- Names  -----------------------
project(        ofCMakeProject )
set( APP_NAME   ofApp )

# ------------------------ OF Path -----------------------
set( OF_DIRECTORY "/YOUR_OF_PATH/" )                 # Please put your OF path in here

# --------------------- Source Files ---------------------
set( ${APP_NAME}_SOURCE_FILES
        src/main.cpp
        src/ofApp.cpp )


# ------------------------ AddOns  ------------
set( OFX_ADDONS_ACTIVE
        #        ofxXmlSettings
        #        ofxOsc
        #        ofxGui
        #        ofxNetwork
        #        ofxVectorGraphics
        #        ofxThreadedImageLoader
        #        ofxAssimpModelLoader
        #        ofxKinect (not working)
        #        ofxOpenCv (not working)
        #        ofxSvg  (not working)
        #        ofxEmscripten (untested)
)

# ========================================================
# ===================== OpenFrameworks ===================
# ========================================================
include( ${OF_DIRECTORY}/CMake/modules/openFrameworksGlobal.cmake )
# ========================================================

