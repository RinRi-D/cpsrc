# Installation

Clone the repository and make setup.sh executable and run it:

```shell
git clone https://git.rinri-d.xyz/rinri/cpsrc.git
cd cpsrc
chmod +x setup.sh
./setup.sh
```

First, write a template which will be used to create new files. Enter the number of the starting line. That is it!

# Usage

To create a new .cpp file, run create.sh with filename argument:

```shell
./create.sh 1234a
```

It will create 1234a.cpp and open neovim. Enter either type 1234a.cpp and 1234a.

To compile and run file, use run.sh with filename(or problem name) as an argument:

```shell
./run.sh 1234a.cpp
```

To compile faster, precompile needed header files in the directory.

```shell
# copy libraries
mkdir bits
cd bits
cp /usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/stdc++.h .

# compile them and use the same c++ standard as in Makefile
g++ -g -std=c++14 stdc++.h
```

Don't forget to use double quotes in the template. GCC uses the local precompiled library first. If there is no local library, it uses system's one. 

```c++
#include "bits/stdc++.h"
// "" instead of <>
```
