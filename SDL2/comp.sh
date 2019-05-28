#!/bin/sh

g++ ./src/$1 -w -lSDL2 -lSDL2_image -o ./bin/$2
