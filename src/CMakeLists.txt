set(CMAKE_INCLUDE_CURRENT_DIR ON)

file(GLOB SOURCES *.cpp)

include_directories("/usr/local/include")
link_directories("/usr/local/lib")

add_executable(Online-Forest ${SOURCES})

target_link_libraries(
    Online-Forest
    config++
    atlas
    lapack
    blas
)

install(TARGETS Online-Forest
    RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/bin
)