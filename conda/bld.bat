cmake -Bbuild -H. -G "%CMAKE_GENERATOR%" -DLIMA_BUILD_SUBMODULES=0 -DLIMA_ENABLE_PYTHON=1 -DLIMA_ENABLE_TESTS=1 -DLIMA_ENABLE_CONFIG=1 -DLIMA_ENABLE_TIFF=1 -DLIMA_ENABLE_HDF5=1 -DLIMA_ENABLE_HDF5_BS=1 -DLIMA_ENABLE_EDFGZ=1 -DLIMA_ENABLE_EDFLZ4=1 -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -DPYTHON_SITE_PACKAGES_DIR=%SP_DIR% -DCMAKE_FIND_ROOT_PATH=%LIBRARY_PREFIX%
IF %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%

cmake --build build --config Release --target install
IF %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
