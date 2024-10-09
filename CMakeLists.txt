add_library(boost INTERFACE)
target_include_directories(boost SYSTEM INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/libs/align/include/)
target_include_directories(boost SYSTEM INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
add_library(Boost::headers ALIAS boost)