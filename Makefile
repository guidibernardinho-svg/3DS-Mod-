TARGET := brpatch
BUILD := build
SOURCES := source

LIBS := -lctru

include /opt/devkitpro/devkitARM/base_tools

all:
\t$(MAKE) -C $(BUILD)

$(BUILD):
\tmkdir -p $(BUILD)
\t$(MAKE) --no-print-directory -C $(BUILD) -f ../Makefile build

build:
\tarm-none-eabi-gcc -o $(TARGET).elf ../source/main.c -lctru

clean:
\trm -rf $(BUILD) *.elf *.cia
