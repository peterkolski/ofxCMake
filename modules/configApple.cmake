
# ===================== Compiler Flags ===================
set(CMAKE_C_COMPILER "/usr/bin/clang")
set(CMAKE_C_FLAGS "") # -x objective-c

set(CMAKE_CXX_COMPILER "/usr/bin/clang++")
set(CMAKE_CXX_FLAGS "-std=c++11 -stdlib=libc++ -D__MACOSX_CORE__") # Removed "-stdlib=libstdc++

#set(CMAKE_OSX_ARCHITECTURES i386)
set(CMAKE_OSX_ARCHITECTURES x86_64)
add_compile_options(-Wno-deprecated-declarations)

# ===================== Compile and Link =================
add_executable(${APP_NAME} MACOSX_BUNDLE ${${APP_NAME}_SOURCE_FILES})
add_dependencies(${APP_NAME} of_shared)
target_link_libraries(  ${APP_NAME}
                        $<TARGET_FILE:of_shared>
                        ${opengl_lib}
                        ${OFX_ADDONS_ACTIVE}
                        )

# --- All addOns into libs/
set_target_properties(  ${OFX_ADDONS_ACTIVE}
                        PROPERTIES
                        LIBRARY_OUTPUT_DIRECTORY    ${OF_DIRECTORY_ABSOLUTE}/CMake/libs/
                        ARCHIVE_OUTPUT_DIRECTORY    ${OF_DIRECTORY_ABSOLUTE}/CMake/libs/
        )

#TODO maybe this approach will copy the libs
#install(TARGETS
#        $<TARGET_FILE:of_shared>
#        opengl_lib
#        OFX_ADDONS_ACTIVE
#        ARCHIVE DESTINATION ${OF_DIRECTORY_ABSOLUTE}/CMake/libs/
#        )

# ================================================
ADD_CUSTOM_COMMAND(TARGET ${APP_NAME}
        POST_BUILD
        COMMAND ${CMAKE_INSTALL_NAME_TOOL}
        ARGS -change "@rpath/libopenFrameworks.dylib" "@loader_path/../Frameworks/libopenFrameworks.dylib" $<TARGET_FILE:${APP_NAME}>
        )

