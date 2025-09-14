SRC := writer.c
TARGET = writer
OBJS := $(SRC:.c=.o)
CC := gcc
ifdef CROSS_COMPILE
    CC := $(CROSS_COMPILE)gcc
endif

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

clean:
	rm -f *.o $(TARGET)