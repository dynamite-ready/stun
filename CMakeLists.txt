cmake_minimum_required(VERSION 3.0)

project(dronestorm-ai)

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
add_executable(dronestorm-netcode ${BASE_PROJECT_FILES})

#  # Link all third party components
target_link_libraries(dronestorm-netcode
    ws2_32.lib
)