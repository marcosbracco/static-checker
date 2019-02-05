
md build\release
cd build\release

cmake -DCMAKE_BUILD_TYPE=Release -G "NMake Makefiles" ..\..\llvm

nmake nodecpp-checker

nmake nodecpp-safe-library

nmake FileCheck

cd ..\..

set PATH=%cd%\llvm\utils\lit;%PATH%
set PATH=%cd%\build\release\bin;%PATH%

llvm-lit.py llvm\tools\clang\tools\nodecpp-checker\test\nodecpp-checker
