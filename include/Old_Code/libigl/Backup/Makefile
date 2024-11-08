CXX=g++
CXXFLAGS=--std=c++11 -lpthread -lglfw -ldl
CXXLIBS=-I/usr/local/include/Eigen/ -I/usr/local/include/igl/
all: triangle_test mesh_test
mesh_test:	mesh.o glad.o
	$(CXX) $(CXXFLAGS) $(CXXLIBS)  mesh.o glad.o -o mesh_test
mesh.o:	main.cc
	$(CXX) -c  main.cc -o mesh.o  $(CXXFLAGS) $(CXXLIBS)

triangle_test: hello_triangle.cc glad.o
	$(CXX) hello_triangle.cc -o triangle_test glad.o  $(CXXFLAGS)
glad.o:	glad.c
	$(CXX) -c glad.c
clean:
	rm *.o *_test
