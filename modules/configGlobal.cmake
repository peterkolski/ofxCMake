# --- Was defined OS specifically before
set( OF_CORE_LIBS
        ${glut_lib}
        ${LIB_POCO_1} ${LIB_POCO_2} ${LIB_POCO_3} ${LIB_POCO_4} ${LIB_POCO_5} ${LIB_POCO_6}
        ${LIB_POCO_7} ${LIB_POCO_8} ${LIB_POCO_9} ${LIB_POCO_10} ${LIB_POCO_11}
        ${LIB_TESS}
        ${LIB_GLEW}
        ${LIB_CAIRO1} ${LIB_CAIRO2} ${LIB_CAIRO3}
        ${LIB_FMODEX}
        ${LIB_RTAUDIO}
        ${LIB_OPENSSL1} ${LIB_OPENSSL2}
        ${LIB_GLFW}
        ${LIB_FREEIMAGE}
        ${LIB_FREETYPE}
        ${LIB_BOOST_1} ${LIB_BOOST_3}
        )

set( OF_SOURCE_FILES
        ${OF_SOURCE_FILES}
        ${ADDON_SOURCE_FILES} )


include_directories( ${OF_CORE_HEADERS} ${OF_ADDON_HEADERS} )

# ============================================================================
# ----------------------------- Setting Libraries ----------------------------
add_library( core       OBJECT ${OF_SOURCE_FILES} )
add_library( static     STATIC $<TARGET_OBJECTS:core> )
add_library( of_shared  SHARED $<TARGET_OBJECTS:core> )

# -------------------------------- Properties --------------------------------
set_target_properties( static    PROPERTIES OUTPUT_NAME openFrameworks)
set_target_properties( of_shared PROPERTIES OUTPUT_NAME openFrameworks)

# -------------------------- Copy OF Libs into CMake/libs --------------------
# --- All addOns into libs/
set_target_properties(  ${OFX_ADDONS_ACTIVE}
        PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY    ${OF_DIRECTORY_ABSOLUTE}/CMake/libs/
        ARCHIVE_OUTPUT_DIRECTORY    ${OF_DIRECTORY_ABSOLUTE}/CMake/libs/
        )

#TODO This does not copy the libs
set_target_properties(  ${openFrameworks}
        PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY    ${OF_DIRECTORY_ABSOLUTE}/CMake/libs/
        #        ARCHIVE_OUTPUT_DIRECTORY    ${OF_DIRECTORY_ABSOLUTE}/CMake/libs/
        )

set_target_properties( of_shared PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin/${APP_NAME}.app/Contents/Frameworks)

#TODO is OF_CORE_FRAMEWORKS OSX specific?
target_link_libraries(  static      ${OF_CORE_FRAMEWORKS} ${OF_ADDON_FRAMEWORKS} ${OF_CORE_LIBS} )
target_link_libraries(  of_shared   ${OF_CORE_FRAMEWORKS} ${OF_ADDON_FRAMEWORKS} ${OF_CORE_LIBS} )

#set_target_properties(  ${static}
#        PROPERTIES
#        LIBRARY_OUTPUT_DIRECTORY    ${OF_DIRECTORY_ABSOLUTE}/CMake/libs/
#        ARCHIVE_OUTPUT_DIRECTORY    ${OF_DIRECTORY_ABSOLUTE}/CMake/libs/
#        )


#TODO maybe this approach will copy the libs
#install(TARGETS
#        $<TARGET_FILE:of_shared>
#        opengl_lib
#        OFX_ADDONS_ACTIVE
#        ARCHIVE DESTINATION ${OF_DIRECTORY_ABSOLUTE}/CMake/libs/
#        )