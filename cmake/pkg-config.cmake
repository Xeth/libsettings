

if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
  MESSAGE(Status Linux OS detected)
  set(PKGCONFIG_DIR lib/pkgconfig)
elseif(${CMAKE_SYSTEM_NAME} MATCHES "FreeBSD")
  MESSAGE(Status FreeBSD OS detected)
  set(PKGCONFIG_DIR libdata/pkgconfig)
endif()



if(NOT SKIP_LIBRARY_INSTALL AND DEFINED PKGCONFIG_DIR)
  MESSAGE("PKG CONFIG FOUND")
  CONFIGURE_FILE("cmake/pkg-config.in" "libsettings.pc" @ONLY)
  install(FILES "${CMAKE_CURRENT_BINARY_DIR}/libsettings.pc" DESTINATION "${CMAKE_INSTALL_PREFIX}/${PKGCONFIG_DIR}")
endif()
