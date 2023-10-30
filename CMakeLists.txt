cmake_minimum_required(VERSION 3.0)

project(stun-client)

# ------------------------------------------------------------------
# Project files...
# ------------------------------------------------------------------------
 
set(BASE_PROJECT_FILES
    ./stun.c
    ./stun_get_addr.c
)

# Aggregated project file/directory lists...
set(PROJECT_FILES ${BASE_PROJECT_FILES})
set(PROJECT_DIRECTORIES 
    ./
    ../
)

# ------------------------------------------------------------------------
# Build the executable or library...
# ------------------------------------------------------------------------

# Compile the object file for the shared library...
add_executable(stun-client ${BASE_PROJECT_FILES})

IF (WIN32)
    # Link Windows libraries.
    target_link_libraries(
        stun-client
        ws2_32.lib
    )
ENDIF()