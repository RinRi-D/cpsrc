Cpsrc is a tool to automate and enhance competitive programmer's experience. It works well with neovim and C++. You can also modify it to use the editor and programming language of your choice.

Cpsrc offers several features:
- Automatic template 
- Fast and easy compilation (using Makefile and precompiled headers)
- Colored input/output

# Installation

Clone the repository and make setup.sh executable and run it:

```shell
git clone https://git.rinri-d.xyz/rinri/cpsrc.git
cd cpsrc
chmod +x setup.sh
./setup.sh
```

Write a template that will be used to create new .cpp files. Enter the number of the starting line.

# Usage

To create a new .cpp file, run create.sh with a filename as an argument:

```shell
./create.sh 1234a
```

It will create 1234a.cpp and open neovim. Enter either 1234a.cpp or 1234a.

To compile and run the file, use run.sh with the filename (or problem name, e.g., 1234a) as an argument:

```shell
./run.sh 1234a.cpp
```

To compile extremely fast, precompile needed header files in the directory. To precompile bits/stdc++.h use `make`:

```shell
make cpstd
```

If it didn't work, you should do it manually by copying a header file in the directory and compiling it with the same flags used in the Makefile. Don't forget to use double quotes in your template. With double quotes, GCC uses a local header first.

```c++
#include "bits/stdc++.h"
// "" instead of <>
```
