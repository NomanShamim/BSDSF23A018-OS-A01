CC = gcc
CFLAGS = -Iinclude -Wall
SRC = $(wildcard src/*.c)
OBJ = $(patsubst src/%.c, obj/%.o, $(SRC))
LIB = lib/libmyutils.a
TARGET = bin/client_static

# Object files except main.c go into the library
LIB_OBJ = $(filter-out obj/main.o, $(OBJ))

all: $(LIB) $(TARGET)

$(LIB): $(LIB_OBJ)
	ar rcs $(LIB) $(LIB_OBJ)
	ranlib $(LIB)

$(TARGET): obj/main.o $(LIB)
	$(CC) $(CFLAGS) obj/main.o -Llib -lmyutils -o $(TARGET)

obj/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f obj/*.o $(TARGET) $(LIB)
