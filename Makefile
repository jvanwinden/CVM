objects = vm.o main.o stack.o sub.o

vm: $(objects)
	g++ -o vm $(objects)
vm.o: header/vm.h
	g++ -c cpp/vm.cpp
stack.o: header/stack.h
	g++ -c cpp/stack.cpp
sub.o: header/sub.h
	g++ -c cpp/sub.cpp
main.o:
	g++ -c cpp/main.cpp

clean:
	rm -f $(objects) vm