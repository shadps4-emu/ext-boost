add_library(boost INTERFACE)
target_include_directories(boost SYSTEM INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/libs/align/include/)
target_include_directories(boost SYSTEM INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

#Manually add dependencies for program_options
add_library(Boost::any ALIAS boost)
add_library(Boost::config ALIAS boost)
add_library(Boost::detail ALIAS boost)
add_library(Boost::core ALIAS boost)
add_library(Boost::function ALIAS boost)
add_library(Boost::iterator ALIAS boost)
add_library(Boost::lexical_cast ALIAS boost)
add_library(Boost::smart_ptr ALIAS boost)
add_library(Boost::static_assert ALIAS boost)
add_library(Boost::throw_exception ALIAS boost)
add_library(Boost::type_traits ALIAS boost)
add_library(Boost::bind ALIAS boost)
add_library(Boost::tokenizer ALIAS boost)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/libs/program_options)

add_library(Boost::headers ALIAS boost)