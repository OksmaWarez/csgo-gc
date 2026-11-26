# Overlay for vcpkg's built-in x64-osx triplet (same name, so it takes
# precedence). Identical to the built-in one except that it pins the macOS
# deployment target, so dependencies are built for the same minimum macOS
# version as csgo_gc itself instead of whatever the build machine runs.
#
# Keep VCPKG_OSX_DEPLOYMENT_TARGET in sync with CMAKE_OSX_DEPLOYMENT_TARGET in
# the top-level CMakeLists.txt.
set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_CMAKE_SYSTEM_NAME Darwin)
set(VCPKG_OSX_ARCHITECTURES x86_64)
set(VCPKG_OSX_DEPLOYMENT_TARGET 10.15)
