# Installation

Clone the repository. Make setup.sh executable and run it:

```shell
chmod +x setup.sh
./setup.sh
```

First, you have to write template which will be used to create new files. Remember the number of the line with which you usually start coding. Enter it. That is it!

# Using

In order to create a new .cpp file, you have to run create.sh with filename argument without an extension:

```shell
./create.sh 1234a
```

You will be automatically redirected to neovim.

To compile&run file, you can just use run.sh with filename(this time with extension):

```shell
./run.sh 1234a.cpp
```
