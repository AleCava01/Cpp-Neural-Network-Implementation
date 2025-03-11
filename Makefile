CXX      ?= g++
CXXFLAGS ?= -std=c++20


OBJECTS = neural_net.o
SOURCES = neural_net.cpp
EXEC     = neural_net
LDFLAGS ?= 
LDLIBS  ?= 

all: $(EXEC)


$(EXEC): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(EXEC)

%.o: %.c
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	$(RM) *.o $(EXEC)

distclean: clean
	$(RM) $(EXEC)
	$(RM) *~
