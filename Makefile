CC=gcc
TARGET=build/math.a

all:postbuild

postbuild:build
	rm build/*.o

build:prebuild
	@$(MAKE) $(TARGET)

prebuild:clean
	mkdir build

$(TARGET):build/math.o
	ar rcs $@ $^

build/math.o:src/*.cpp
	$(CC) -c -o $@ $^

clean:
	rm -rf build
