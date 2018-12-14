set(LIBSETTINGS_VERSION_MAJOR 0)
set(LIBSETTINGS_VERSION_MINOR 1)
set(LIBSETTINGS_VERSION_PATCH 0)


configure_file (
  "${CMAKE_CURRENT_SOURCE_DIR}/src/Config.hpp.in"
  "${CMAKE_CURRENT_BINARY_DIR}/include/libsettings/Config.hpp"
)
