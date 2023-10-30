mkdir build
chmod 777 ./build
cd ./build
cmake -G "Unix Makefiles" ..
cmake --build . --config Release