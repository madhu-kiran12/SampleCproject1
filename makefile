math.exe: main.o src/add.o src/sub.o src/mul.o src/div.o
	gcc -Iinclude -o math.exe main.o src/add.o src/sub.o src/mul.o src/div.o

main.o: main.c include/math_ops.h
	gcc -Iinclude -c main.c -o main.o

src/add.o: src/add.c include/math_ops.h
	gcc -Iinclude -c src/add.c -o src/add.o

src/sub.o: src/sub.c include/math_ops.h
	gcc -Iinclude -c src/sub.c -o src/sub.o

src/mul.o: src/mul.c include/math_ops.h
	gcc -Iinclude -c src/mul.c -o src/mul.o

src/div.o: src/div.c include/math_ops.h
	gcc -Iinclude -c src/div.c -o src/div.o

clean:
	rm -f main.o src/*.o math.exe

