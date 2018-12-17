all: bison-calc

bison-calc: bison-calc.yy.c
	gcc -o $@ $^ -ll

%.yy.c:%.l
	flex -o $@ $<

clean:
	-git clean -fdx
