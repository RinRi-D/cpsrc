CXX = g++
CXXFLAGS = -Wall -Werror -std=c++14

all: $(patsubst %.cpp, %.out, $(wildcard *.cpp))

%.out: %.cpp Makefile
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm *.out