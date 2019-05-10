# Udacity CPPND-Route-Planning-Project Docker image

# Description

This was created due to my code getting deleted from the VM when I went back to reaffirm how to solve a previous problem. As I was on Arch linux and dbecad's [instructions](https://github.com/dbecad/CppND-Route-Planning-Project/blob/master/Ubuntu16.4_Install.md) were for ubuntu I decided to use docker rather than reinstall my whole computer or use a vm.

## Prerequisites - docker

## Install guide

- Clone this repo file to a location on your computer
- `git clone https://github.com/udacity/CppND-Route-Planning-Project.git --recurse-submodules`
- git clone --recurse-submodules https://github.com/cpp-io2d/P0267_RefImpl
- Make sure you are in the directory with the Dockerfile in and run `docker build . -t cpp:latest` -`docker run -it -v {absolute/path/to/project}:/CppND-RoutePlanning-Project cpp:latest /bin/bash`

Then from within the contain follow the final [instructions](https://github.com/dbecad/CppND-Route-Planning-Project/blob/master/Ubuntu16.4_Install.md#compile-and-run-project-code) to build the project

The binary will then be executable from the host.
