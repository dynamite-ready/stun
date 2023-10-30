mkdir build
chmod 777 ./build
cd ./build
cmake -G "Visual Studio 17 2022" -T v142 ..
cmake --build . --config Release