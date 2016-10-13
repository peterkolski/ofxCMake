# ----------------------------------------------------------------------------
# --- Set a absolute path name, is case the project used a relative one
# ----------------------------------------------------------------------------
get_filename_component( OF_DIRECTORY_ABSOLUTE ${OF_DIRECTORY_BY_USER} ABSOLUTE)

# ----------------------------------------------------------------------------
# --------------------------------- ADDONS ----------------------------------
# --- Include all addOn .cmake files.
# --- Libs are only linked, if set in the project cMakeLists.txt
# ----------------------------------------------------------------------------
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/addOnsInternal.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/addOnsExternal.cmake )

# ----------------------------------------------------------------------------
# ---------------------------- OS SPECIFIC TASKS -----------------------------
# --- iOS & Android won't be supported
# ----------------------------------------------------------------------------
if( APPLE )
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/openFrameworksApple.cmake )
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/configApple.cmake )
    # Apple is a Unix, too. So dont ask only UNIX
elseif( UNIX )
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/openFrameworksLinux.cmake )
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/configLinux.cmake  )
elseif( WIN32)
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/openFrameworksWindows.cmake )
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/configWindows.cmake  )
else()
    message( FATAL_ERROR "Operating System not supported" )
endif()


# ===================== App Properties ===================
set_target_properties(  ${APP_NAME}
                        PROPERTIES  RUNTIME_OUTPUT_DIRECTORY    ${PROJECT_SOURCE_DIR}/bin
                    )
