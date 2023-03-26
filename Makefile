.PHONY: all clean install uninstall

all: hello_cow_pls_dontbreakmypc

clean:
	rm *.o hello_cow_pls_dontbreakmypc

install:
	install ./hello_cow_pls_dontbreakmypc /usr/local/bin

uninstall:
	rm /usr/local/bin/hello_cow_pls_dontbreakmypc

ASCIIPicture.o: ASCIIPicture.cpp ASCIIPicture.hpp
	g++ ASCIIPicture.cpp -c -o ASCIIPicture.o

Cloud.o: Cloud.cpp Cloud.hpp
	g++ Cloud.cpp -c -o Cloud.o

Cow.o: Cow.cpp Cow.hpp
	g++ Cow.cpp -c -o Cow.o

Field.o: Field.cpp Field.hpp
	g++ Field.cpp -c -o Field.o

Parser.o: Parser.cpp Parser.hpp
	g++ Parser.cpp -c -o Parser.o

main.o: main.cpp ASCIIPicture.hpp Cloud.hpp Field.hpp Parser.hpp Cow.hpp
	g++ main.cpp -c -o main.o

hello_cow_pls_dontbreakmypc: ASCIIPicture.hpp ASCIIPicture.o Cloud.hpp Cloud.o Field.hpp Field.o Parser.hpp Parser.o Cow.hpp Cow.o main.o
	g++ ASCIIPicture.o Cloud.o Cow.o Field.o Parser.o main.o -o hello_cow_pls_dontbreakmypc
