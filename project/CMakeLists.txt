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
set( OF_DIRECTORY "--- YOUR OF PATH ----" )                 # Please put your OF path in here

# --------------------- Source Files ---------------------
set( ${APP_NAME}_SOURCE_FILES
        src/main.cpp
        src/ofApp.cpp )


# ------------------------ AddOns OF INTERNAL ------------
set( OFX_ADDONS_ACTIVE
        #        ofxXmlSettings
        #        ofxOsc
        #        ofxGui
)

# ------------------------ AddOns EXTERNAL ----------------
#include( ${OF_DIRECTORY}/addons/ofxFluid/ )

# ========================================================
# ===================== OpenFrameworks ===================
# ========================================================
include( ${OF_DIRECTORY}/CMake/modules/openFrameworksGlobal.cmake )
# ========================================================

