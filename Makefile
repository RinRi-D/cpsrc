CXX = g++
CXXFLAGS = -g -Wall -std=c++14

all: $(patsubst %.cpp, %.out, $(wildcard *.cpp))

%.out: %.cpp Makefile
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm *.out