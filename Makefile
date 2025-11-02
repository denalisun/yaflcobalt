CC = x86_64-w64-mingw32-g++
SRC = src/dllmain.cpp
OUT = yafl.dll
CFLAGS = -I include/ -L lib/ -lminhook.x64 -ldetours -lsyelog -std=c++20

build:
	$(CC) -o $(OUT) $(SRC) -Wall -Werror $(CFLAGS)