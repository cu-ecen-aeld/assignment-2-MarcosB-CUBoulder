SRC := writer.c
TARGET = writer
OBJS := $(SRC:.c=.o)
CC := gcc

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

clean:
	rm -f *.o $(TARGET)