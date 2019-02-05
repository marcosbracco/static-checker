
md build\release
cd build\release

cmake -DCMAKE_BUILD_TYPE=Release -G "NMake Makefiles" ..\..\llvm

nmake nodecpp-checker

nmake nodecpp-safe-library

nmake FileCheck

cd ..\..

