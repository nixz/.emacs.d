cmake_minimum_required (VERSION 2.6) 
project (%[PROJECT-NAME: %]) 

set(VTK_DIR "PATH/TO/VTK/BUILD/DIRECTORY")
find_module(VTK)
find_package(VTK REQUIRED)
include(${VTK_USE_FILE})
add_executable(%[PROJECT-NAME: %] Test.cxx)
target_link_libraries(%[PROJECT-NAME: %] ${VTK_LIBRARIES})
