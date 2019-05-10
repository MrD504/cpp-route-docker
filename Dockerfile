FROM ubuntu:16.04
RUN apt update -y
RUN apt install build-essential cmake wget libcairo2-dev libgraphicsmagick1-dev libpng-dev software-properties-common -y
RUN apt-add-repository ppa:ubuntu-toolchain-r/test -y
RUN apt update -y
RUN apt install g++-7 -y
COPY create_symlink.sh /create_symlink.sh
RUN ["chmod", "+x", "/create_symlink.sh"]
RUN /create_symlink.sh
RUN apt-get purge cmake -y
RUN wget https://github.com/Kitware/CMake/releases/download/v3.14.3/cmake-3.14.3.tar.gz
RUN tar xzvf cmake-3.14.3.tar.gz
RUN cd cmake-3.14.3 
RUN ["chmod", "+x", "/cmake-3.14.3/bootstrap"]
WORKDIR /cmake-3.14.3
RUN ./bootstrap
RUN make 
RUN make install
WORKDIR /
COPY P0267_RefImpl /P0267_RefImpl
WORKDIR /P0267_RefImpl/Debug
RUN cmake --config Debug "-DCMAKE_BUILD_TYPE=Debug" ..
RUN cmake --build .
RUN make 
RUN make install
CMD /bin/bash
