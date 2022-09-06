# Learn CMake

<p align="left">
<img alt="License MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
<img alt="Contributor Covenant" src="https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg" />
<img alt="Contributions Welcome" src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat" />

### Motivation

As someone who always used the `gcc` and `g++` commands to compile my C/C++ program, I always wondered how to manage C/C++ projects containing shared libraries and multiple source files for cross-platform development. 

Naturally, I found CMake, a cross-platform free and open-source software for build automation, testing, packaging, and installation of software by using a compiler-independent method. 

This repository is for someone starting to learn CMake from scratch and provides boilerplate templates for basic C++ projects.

**Please leave a :star: as motivation if you liked the idea!**

### Contents

- [Templates](#templates)
- [How to Build](#build)
- [How to Contribute](#contribute)
- [License](#license)

### <a id="templates">Templates</a>

**Template 1 - Hello World**

A very basic template containing only the `CMakeLists.txt` and `main.cpp` file.

```
1-hello-world
│       CMakeLists.txt
│       main.cpp
```

**Template 2 - Simple Include**

Contains a `include` directory with a `Foo.h` header file used by the `main.cpp`.

```
2-simple-include
│   │   CMakeLists.txt
│   │   main.cpp
│   │
│   └───include
│           Foo.h
```

**Template 3 - Multiple Source Files**

This template underscores an example of project containing multiple source `cpp` files.

```
3-multi-source
│   │   CMakeLists.txt
│   │   main.cpp
│   │
│   ├───include
│   │       Foo.h
│   │
│   └───src
│           Foo.cpp
```

**Template 4 - Static Library (without CMakeLists.txt)**

Highlights the use of projects that use static libraries, without the nested `CMakeLists.txt`.

```
4-static-library
│   │   CMakeLists.txt
│   │   main.cpp
│   │
│   └───lib
│       └───Foo
│           ├───include
│           │       Foo.h
│           │
│           └───src
│                   Foo.cpp
```

**Template 5 - Static Library (with CMakeLists.txt)**

Highlights the use of projects that use static libraries, with the nested `CMakeLists.txt`.

```
5-nested-cmake
    │   CMakeLists.txt
    │   main.cpp
    │
    └───lib
        └───Foo
            │   CMakeLists.txt
            │
            ├───include
            │       Foo.h
            │
            └───src
                    Foo.cpp
```

### <a id="build">How to Build</a>

- Firstly, ensure that you have C++ compiler and CMake are installed on your system, including properly set `PATH` variables.
- If you are using Windows, use the included scripts as follows.
    - Use `make <template> <CMake generator | optional>` command to prepare CMake files in the `build/<template>` directory.
    - Use `build <template>` command to compile the template.
    - Use `run <template>` command to run the compiled template.
    - Use `clean <template | optional>` to either delete the entire `build` directory or if template is provided, then delete only that template's build directory.
- Alternatively, use the following commands if the `batch` scripts doesn't work.
    - Use `cmake -S ./<template>/ -B ./build/<template>` command to achieve same results as the `make` script.
    - Go inside the `build/<template>` directory and use the `make` command. In my case, the *MSYS2*'s make command is `mingw32-make`.
    - After compilation, run the executable.

### <a id="contribute">How to Contribute</a>

Contributions are welcome as always, before submitting a new PR, please make sure to open a new issue so community members can discuss. Additionally, you might find existing open issues which can helps with improvements.

This project follows standard [code of conduct](/CODE_OF_CONDUCT.md) so that you can understand what actions will and will not be tolerated.

### <a id="license">License</a>

This project is MIT licensed, as found in the [LICENSE](/LICENSE).

***
<center>Built and maintained with ❤️ by <a href="https://www.linkedin.com/in/shubham1chawla/">Shubham</a></center>

***