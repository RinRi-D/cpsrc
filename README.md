# Installation

Clone the repository and make setup.sh executable and run it:

```shell
git clone https://git.rinri-d.xyz/rinri/cpsrc.git
cd cpsrc
chmod +x setup.sh
./setup.sh
```

First, you have to write template which will be used to create new files. Remember the number of the line with which you usually start coding. Enter it. That is it!

# Using

In order to create a new .cpp file, you have to run create.sh with filename argument:

```shell
./create.sh 1234a
```

It will create 1234a.cpp. You can enter 1234a.cpp instead of 1234a and you will get the same result.
Then you will be automatically redirected to neovim.

To compile and run file, you can use run.sh with filename as an argument(you can use both filename with extension and without):

```shell
./run.sh 1234a.cpp
```
