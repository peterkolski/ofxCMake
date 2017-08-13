
# ============================================================================
# ------------------------------ Compiler Flags ------------------------------
set_source_files_properties( ${OF_SOURCE_FILES} PROPERTIES COMPILE_FLAGS "-std=c++11 -Wall -fPIC" )

# ============================================================================
# ------------------------------ Compile and Link ----------------------------
add_executable( ${APP_NAME} ${${APP_NAME}_SOURCE_FILES} )

set_target_properties( of_shared PROPERTIES POSITION_INDEPENDENT_CODE TRUE )
target_link_libraries( ${APP_NAME}
                        $<TARGET_FILE:of_shared>
                        ${OFX_ADDONS_ACTIVE}
                    )
