CXX = g++
CXXFLAGS = -g -Wall -std=c++14

all: $(patsubst %.cpp, %.out, $(wildcard *.cpp))

%.out: %.cpp Makefile
	$(CXX) $(CXXFLAGS) $< -o $@

cpstd:
	mkdir bits
	cp /usr/include/c++/*/*/bits/stdc++.h bits
	$(CXX) $(CXXFLAGS) bits/stdc++.h

clean:
	rm *.out