set(CMAKE_INCLUDE_CURRENT_DIR ON)

file(GLOB SOURCES *.cpp)

find_package(LAPACK REQUIRED)
find_package(Config REQUIRED)
find_package(GMM REQUIRED)

include_directories("../include ${CONFIG_INCLUDE_DIR} ${GMM_INCLUDE_DIR}")

SET(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} ${LAPACK_LINKER_FLAGS}")


add_library(onlineforest STATIC ${SOURCES})

target_link_libraries(
    onlineforest
    ${CONFIG_LIBRARIES}
    ${LAPACK_LIBRARIES}
)


#install(TARGETS onlineforest
#    RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
#)
