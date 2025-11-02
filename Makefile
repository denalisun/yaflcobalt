CC = x86_64-w64-mingw32-g++
SRC = src/dllmain.cpp
OUT = yaflcobalt.dll
CFLAGS = -I include/ -L lib/ -lminhook.x64 -ldetours -lsyelog -ldbghelp -std=c++23 -DUNICODE -D_UNICODE -fpermissive

build:
	$(CC) -shared -o $(OUT) $(SRC) -Wall $(CFLAGS)
