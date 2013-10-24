#  CONFIG_FOUND - system has the config++ library
#  CONFIG_INCLUDE_DIR - the config++ include directory
#  CONFIG_LIBRARIES - The libraries needed to use config++

if (CONFIG_INCLUDE_DIR AND CONFIG_LIBRARIES)

  # in cache already
  SET(CONFIG_FOUND TRUE)

else (CONFIG_INCLUDE_DIR AND CONFIG_LIBRARIES)
  FIND_PATH(CONFIG_INCLUDE_DIR libconfig.h++
     ${CONFIG_ROOT}/include
     /usr/include/
     /usr/local/include/
     /sw/lib
     /sw/local/lib
     $ENV{ProgramFiles}/CONFIG/include/
     $ENV{SystemDrive}/CONFIG/include/
  )

  if(WIN32 AND MSVC)
  else(WIN32 AND MSVC)
    FIND_LIBRARY(CONFIG_LIBRARIES NAMES config++
      PATHS
      ${CONFIG_ROOT}/lib
      /sw/lib
      /sw/local/lib
      /usr/lib
      /usr/local/lib
    )
  endif(WIN32 AND MSVC)

  if (CONFIG_INCLUDE_DIR AND CONFIG_LIBRARIES)
     set(CONFIG_FOUND TRUE)
  endif (CONFIG_INCLUDE_DIR AND CONFIG_LIBRARIES)

  if (CONFIG_FOUND)
     if (NOT CONFIG_FIND_QUIETLY)
        message(STATUS "Found config++: ${CONFIG_LIBRARIES}")
     endif (NOT CONFIG_FIND_QUIETLY)
  else (CONFIG_FOUND)
     if (CONFIG_FIND_REQUIRED)
        message(FATAL_ERROR "Could NOT find config++")
     endif (CONFIG_FIND_REQUIRED)
  endif (CONFIG_FOUND)

  MARK_AS_ADVANCED(CONFIG_INCLUDE_DIR CONFIG_LIBRARIES)

endif (CONFIG_INCLUDE_DIR AND CONFIG_LIBRARIES)