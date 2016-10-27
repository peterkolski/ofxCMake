
# ============================================================================
# ------------------------------ Compiler Flags ------------------------------
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall")
#set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
set_source_files_properties( ${OF_SOURCE_FILES} PROPERTIES COMPILE_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -fPIC" )

# ============================================================================
# ------------------------------ Compile and Link ----------------------------
add_executable( ${APP_NAME} ${${APP_NAME}_SOURCE_FILES} )

set_target_properties( of_shared PROPERTIES POSITION_INDEPENDENT_CODE on )
target_link_libraries( ${APP_NAME}
                        $<TARGET_FILE:of_shared>
                        ${OFX_ADDONS_ACTIVE}
                    )


#------------------------------ RPI -----------------------


#if( IS_ARM )
## Assuming Raspberry Pi 2 and Raspbian
#list(APPEND OPENFRAMEWORKS_DEFINITIONS
#-DTARGET_RASPBERRY_PI
#-DUSE_DISPMANX_TRANSFORM_T
#-DSTANDALONE
#-DPIC
#-D_REENTRANT
#-D_LARGEFILE64_SOURCE
#-D_FILE_OFFSET_BITS=64
#-D_FORTIFY_SOURCE
#-D__STDC_CONSTANT_MACROS
#-D__STDC_LIMIT_MACROS
#-DTARGET_POSIX
#-DHAVE_LIBOPENMAX=2
#-DOMX
#-DOMX_SKIP64BIT
#-DUSE_EXTERNAL_OMX
#-DHAVE_LIBBCM_HOST
#-DUSE_EXTERNAL_LIBBCM_HOST
#-DUSE_VCHIQ_ARM
#)
#endif()
#
#
#








#if( IS_ARM )
#    set(ARCH_FLAG "-march=armv7-a -mfpu=vfp -mfloat-abi=hard")
#elseif(ARCH_BIT MATCHES 32)
#    set(ARCH_FLAG "-m32")
#endif()