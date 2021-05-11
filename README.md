## Build
cmake -H. -B_build -DCMAKE_INSTALL_PREFIX=_install

-DBUILD_TESTS=ON


cmake --build _build --target install
## Test
cmake --build _build --target test

[![Build Status]()