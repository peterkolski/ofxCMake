# ============================================================================
# --- Set a absolute path name, is case the project used a relative one
get_filename_component( OF_DIRECTORY_ABSOLUTE ${OF_DIRECTORY_BY_USER} ABSOLUTE)



# ============================================================================
# --------------------------------- ADDONS -----------------------------------
# --- Include all addOn .cmake files.
# --- Libs are only linked, if set in the project cMakeLists.txt
# ============================================================================
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/addOnsInternal.cmake )
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/addOnsExternal.cmake )



# ============================================================================
# -------------------------------- OF SOURCE FILES ---------------------------
# ============================================================================
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/openFrameworksGlobal.cmake )

if( APPLE ) # Apple is a Unix, too. So dont ask only first UNIX
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/openFrameworksApple.cmake )
elseif( UNIX )
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/openFrameworksLinux.cmake )
elseif( WIN32)
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/openFrameworksWindows.cmake )
else()
    message( FATAL_ERROR "Operating System not supported" )
endif()



# ============================================================================
# -------------------------------- OF CONFIGURATION --------------------------
# ============================================================================
include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/configGlobal.cmake)

if( APPLE )
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/configApple.cmake )
elseif( UNIX )
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/configLinux.cmake  )
elseif( WIN32)
    include( ${OF_DIRECTORY_ABSOLUTE}/CMake/modules/configWindows.cmake  )
else()
    message( FATAL_ERROR "Operating System not supported" )
endif()



# ============================================================================
# ------------------------------- APP CONFIGURATION --------------------------
# ============================================================================
set_target_properties(  ${APP_NAME}
        PROPERTIES  RUNTIME_OUTPUT_DIRECTORY    ${PROJECT_SOURCE_DIR}/bin
        )
