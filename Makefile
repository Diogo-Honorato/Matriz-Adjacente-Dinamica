CC = gcc
CFLAGS = -Wall -g
LDFLAGS = -lm
SOURCES = api/MatrizAdjacente.c api/LeitorArquivo.c main.c
HEADERS = api/GraphLib.h
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = grafo.exe

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	@$(CC) $(CFLAGS) -o $@ $(OBJECTS) $(LDFLAGS)

%.o: %.c $(HEADERS)
	@$(CC) $(CFLAGS) -c $< -o $@

run: $(EXECUTABLE)
	@./$(EXECUTABLE)
	
clean:
	@rm -f $(OBJECTS) $(EXECUTABLE)