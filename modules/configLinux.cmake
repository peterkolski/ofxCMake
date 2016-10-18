
# ============================================================================
# ------------------------------ Compiler Flags ------------------------------
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall")
#set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)


# ============================================================================
# ------------------------------ Compile and Link ----------------------------
add_executable( ${APP_NAME} ${SOURCE_FILES} )

target_link_libraries( ${APP_NAME}
                        $<TARGET_FILE:of_shared>
                        ${OF_CORE_LIBS}
                        ${OFX_ADDONS_ACTIVE}
                    )

# global - end of main

add_dependencies( ${APP_NAME} of_shared )