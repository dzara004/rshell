CC=g++
CFLAGS=-Wall -Werror -ansi -pedantic
#INCLUDE=-I./header
EXEC=test.out
SOURCES=src/main.cpp src/Andand.cpp src/Command.cpp src/Oror.cpp src/Semicolon.cpp src/Flag.cpp src/Regular.cpp src/Directory.cpp
OBJECTS=$(SOURCES:.cpp=.o)

all: $(SOURCES) $(EXEC)
    
$(EXEC): $(OBJECTS) 
	$(CC) $(OBJECTS) -o $(EXEC)

%.o: %.cpp
	$(CC) -g -c $(CFLAGS) $< -o $@
	
clean: 
	rm -f $(EXEC) $

##############################	
# http://www.cplusplus.com/forum/general/54342/
##############################

#CXX = g++
#CXXFLAGS = -Wall -Werror -ansi -pedantic
#INCLUDE = -I./src

#Link command:
#src: main.o ./src/main.o
#	$(CXX) $(CXXFLAGS) $(INCLUDE) main.o ./src/main.o -o src

#Compilation commands:
#main.o: main.cpp
#	$(CXX) $(CXXFLAGS) $(INCLUDE) -c main.cpp -o main.o

#./src/main.o: ./src/main.cpp
#	$(CXX) $(CXXFLAGS) $(INCLUDE) -c ./src/main.cpp -o ./src/main.o


#make clean
#clean:
#	rm	-f	*.o