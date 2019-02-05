
set PATH=%cd%\llvm\utils\lit;%PATH%
set PATH=%cd%\build\release\bin;%PATH%

llvm-lit.py llvm\tools\clang\tools\nodecpp-checker\test\nodecpp-checker
