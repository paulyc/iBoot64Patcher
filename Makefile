all: a.out

a.out: iBoot64Patcher/main.cpp
	g++ -std=c++14 iBoot64Patcher/main.cpp  -loffsetfinder64 -lgeneral

clean:
	rm -f a.out
.PHONY: clean

install: a.out
	install -m 0755 a.out /usr/local/bin/iBoot64Patcher
.PHONY: install
