#Makefile build system for C programs
#by Gikoskos

#DON'T EDIT

CC = gcc
CFLAGS = -Wall -std=c11 -O3
LFLAGS = -pthread -lpcap -lcurl

SRCS = $(wildcard *.c)
EXES = $(patsubst %.c, %, $(SRCS))


.PHONY: all intro

all: intro $(EXES)

intro:
	@echo -e "\nCompiling .c files in "`pwd`" folder:"

$(EXES): %: %.c
	$(CC) $(CFLAGS) $< -o ../build/$@ $(LFLAGS)
