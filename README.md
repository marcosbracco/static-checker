# nodecpp-checker
Tools for static check of C++ following rules of memory-safe-cpp



Goals
-----

The memory-safe C++ (as defined at memory-safe-cpp) requires of static checks and runtime checks. This project is intended to provide the tools for the static checks.


Overview
--------
The static checke tools are based on __clang7 tooling AST__. This means that any source code that is accepted by clang7 should be accepted by the tool. It also means that building the tool implies building big part of clang7.


Build
-----
Building clang based tools works better when source code is placed inside the llvm/clang source tree.
Because of that, this repository has no code, but acts as the root place for checkout of llvm/clang source tree, and then checkout the repository with the tool code inside that.
The easy way is using 'checkout' and 'build' scripts at the root of this repository, provided your PATH environment can access git, cmake, python 2.7 and C++ compiler (Visual Studio Command Line on Windows). Otherwise, please see [doc/BUILD_CHECKER.md](doc/BUILD_CHECKER.md) for a more detailed description.


Run
---
To run the static checker tool over your own code, please see [doc/RUN_CHECKER.md](doc/RUN_CHECKER.md)