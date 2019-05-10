BuildDir = "build"

cd ./CppND-RoutePlanning-Project
if [! -d $BuildDir]; then
mkdir $BuildDir
cd $BuildDir
cmake ..
make