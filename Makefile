# Compiler and flags
CC = gcc
CFLAGS = -Wall -Iinclude

# Directories
SRC = src
OBJ = obj
BIN = bin

# Files
TARGET = $(BIN)/program
OBJECTS = $(OBJ)/main.o $(OBJ)/hello.o

# Default target
all: $(TARGET)

# Linking rule
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

# Compilation rules
$(OBJ)/main.o: $(SRC)/main.c $(SRC)/hello.c include/hello.h
	$(CC) $(CFLAGS) -c $(SRC)/main.c -o $@

$(OBJ)/hello.o: $(SRC)/hello.c include/hello.h
	$(CC) $(CFLAGS) -c $(SRC)/hello.c -o $@

# Clean rule
clean:
	rm -f $(OBJ)/*.o $(TARGET)

