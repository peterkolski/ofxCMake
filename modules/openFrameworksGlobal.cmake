
# ----------------------------------------------------------------------------
# --- Set a absolute path name, is case the project used a relative one
# ----------------------------------------------------------------------------
get_filename_component( OF_DIRECTORY_ABSOLUTE ${OF_DIRECTORY_BY_USER} ABSOLUTE)

# ----------------------------------------------------------------------------
# --- Include all internal .cmake files.
# --- Libs are only linked, if set in the project cMakeLists.txt
# ----------------------------------------------------------------------------
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/addOnsInternal.cmake )


if( APPLE )
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/configApple.cmake )
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/openFrameworksApple.cmake )
endif()

# ===================== App Properties ===================
set_target_properties(  ${APP_NAME}
                        PROPERTIES  RUNTIME_OUTPUT_DIRECTORY    ${PROJECT_SOURCE_DIR}/bin
                    )
