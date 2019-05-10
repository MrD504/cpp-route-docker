# Udacity CPPND-Route-Planning-Project Docker image

# Description

This was created due to my code getting deleted from the VM when I went back to reaffirm how to solve a previous problem. As I was on Arch linux and dbecad's [instructions](https://github.com/dbecad/CppND-Route-Planning-Project/blob/master/Ubuntu16.4_Install.md) were for ubuntu I decided to use docker rather than reinstall my whole computer or use a vm.

## Prerequisites - docker

## Install guide

- `git clone https://github.com/MrD504/cpp-route-docker.git --recurse-submodules`
- Make sure you are in the directory with the Dockerfile in and run `docker build . -t cpp:latest`
- `docker run -v {absolute/path/to/project}:/CppND-RoutePlanning-Project cpp:latest`

The binary will then be executable from the host.
