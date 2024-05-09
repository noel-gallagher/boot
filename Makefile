build:
	nasm -f bin src/boot.asm -o boot.bin

clean:
	@rm ./boot.bin

all: clean build

