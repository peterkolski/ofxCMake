
# TODO Comments
include( ${OF_DIRECTORY}/CMake/modules/addOnsInternal.cmake )

if( APPLE )
    include( ${OF_DIRECTORY}/CMake/modules/configApple.cmake )
    include( ${OF_DIRECTORY}/CMake/modules/openFrameworksApple.cmake )
endif()

# ===================== App Properties ===================
set_target_properties(  ${APP_NAME}
                        PROPERTIES  RUNTIME_OUTPUT_DIRECTORY    ${PROJECT_SOURCE_DIR}/bin
                    )
