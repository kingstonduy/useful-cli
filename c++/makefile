install:
	sudo apt install build-essential
	echo -e '#include <iostream>\nint main(){std::cout<<"Hello, World!"<<std::endl;return 0;}' > main.cpp
	g++ -std=c++17 main.cpp -o main
	./main
