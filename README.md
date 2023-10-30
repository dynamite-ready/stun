# STUN MSVC

Small, well written C/C++ STUN clients seem to be thin on the ground.
Let alone STUN clients that compile on Windows. Of all the implementations out there, `DEgITx/stun`
seemed the cleanest, and only needed a few small tweaks to compile on MSVC.

Hence this fork.
Developing to fit to purpose.

Also compiles cross platform with CMake (Tested on Windows 10 with VS Studio 2015, and on Unbuntu).
You'll need to install CMake on both platforms first.

Linux:

Bash:

```bash
gcc stun.c stun_get_addr.c
```

Cmake:

```
./cmake-build.sh
```

Windows (mingw):

Powershell

```
gcc stun.c stun_get_addr.c -l ws2_32
```

CMake

```
./cmake-build-win.sh
```

then

```
./a 173.194.222.127 19302 4233
```

If you're building with Cmake, you may need to look inside the `./build` directory, to find the
executable. On Windows, this will likely be `build\Release\stun-client.exe`. On \*nix it's `build/stun-client`.

implementation (include stun_get_addr.c in your project):

```c
int stun_get_addr(char *stun_server_ip, short stun_server_port, short local_port, char *return_ip, short *return_port);
```

example:

```c
char return_ip[50];
short return_port;
if (stun_get_addr("173.194.222.127", 19302, 4233, return_ip, &return_port) == 0) {
	printf("%s\n", return_ip);
} else {
	printf("some error\n");
}
```
