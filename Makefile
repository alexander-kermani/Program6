#Alexander Kermani (CS 3377.002) (axk168331@utdallas.edu)

CXX = g++
CXXFLAGS = -Wall -c
#The .h files.
CPPFLAGS = -I/scratch/perkins/include
#The path to the included libraries.
LDFLAGS = -L/scratch/perkins/lib
#The library functionality.
LDLIBS = -lcdk -lcurses

program6.o: program6.cc
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) program6.cc -o program6.o

program6: program6.o
	$(CXX) program6.o -o program6 $(LDFLAGS) $(LDLIBS)

all: program6

#clean:


#backup: 
