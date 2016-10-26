#==================================================================
# ---- activate external addOn
macro( include_external_addOn NAME_ADDON )
    if( ${NAME_ADDON} IN_LIST OFX_ADDONS_ACTIVE )
        if( EXISTS ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/)
            include( ${OF_CMAKE_ADDONS}/external/${NAME_ADDON}.cmake )
            message( STATUS "${NAME_ADDON} activated" )
        else()
            message( WARNING "${NAME_ADDON} folder not found" )
        endif()
    endif()
endmacro( include_external_addOn )

#==================================================================

# TODO Find also .hpp files
# ---- Find all include directories
MACRO( find_header_directories return_list PATH )
    FILE(GLOB_RECURSE new_list ${PATH}/*.h)
    SET(dir_list "")
    FOREACH(file_path ${new_list})
        GET_FILENAME_COMPONENT(dir_path ${file_path} PATH)
        SET(dir_list ${dir_list} ${dir_path})
    ENDFOREACH()
    LIST(REMOVE_DUPLICATES dir_list)
    SET(${return_list} ${dir_list})
ENDMACRO()

#==================================================================

# TODO DOES NOT WORK YET
# ---- Find all source files
macro( find_source_files return_list PATH )
    file( GLOB_RECURSE   FILES_CPP   "${PATH}/*.cpp" )
    file( GLOB_RECURSE   FILES_CC    "${PATH}/*.cc" )
    file( GLOB_RECURSE   FILES_C     "${PATH}/*.c" )
    set( ${return_list} ${FILES_CPP} ${FILES_CC} ${FILES_C} )
endmacro()