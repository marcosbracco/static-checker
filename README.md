# nodecpp-checker
Tools for static check of C++ following rules of [__memory-safe-cpp__](https://github.com/node-dot-cpp/memory-safe-cpp)



Goals
-----

The memory-safe C++ (as defined at memory-safe-cpp) require of static checks and runtime checks. This project is intended to provide the tools for the static checks.


Overview
--------
The static check tools are based on __clang7 tooling AST__. This means that any source code that is accepted by clang7 _should_ be accepted by the tool. It also means that building the tool implies building big part of clang7.


Build (Windows)
---------------
Building clang based tools works better when source code is placed inside the llvm/clang source tree.
Because of that, this repository has no code, but acts as the root place for checkout of llvm/clang source tree, and then checkout the repository with the tool code inside that.

The easy way is using `checkout.bat` and `build.bat` scripts at this repository, but require your PATH environment can access git, cmake, python 2.7 and Visual Studio Command Line. What I find the most convenient is to create a file `env.bat` in this root folder (will be ignored by git) that sets the environment. Please update paths to reflect your system and needs.

	title node-dot-cpp

	set PATH=C:\Python27;C:\Python27\Scripts;%PATH%
	set PATH=C:\node-dot-cpp\static-checker\llvm\utils\lit;%PATH%
	set PATH=C:\node-dot-cpp\static-checker\build\release\bin;%PATH%

	%ComSpec% /k ""C:\Program Files(x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat""


For a more detailed description please see [doc/CHECKER-BUILD.md](doc/CHECKER-BUILD.md)
