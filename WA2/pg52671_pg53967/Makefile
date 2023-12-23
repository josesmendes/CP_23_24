CC = gcc
SRC = src/
CFLAGS = -Ofast -ftree-vectorize -msse4
.DEFAULT_GOAL = all

all: MDpar.exe MDseq.exe

MDpar.exe: $(SRC)/MDpar.cpp
	module load gcc/11.2.0;\
	$(CC) $(CFLAGS) $(SRC)MDpar.cpp -lm -fopenmp -o MDpar.exe

MDseq.exe: $(SRC)/MDseq.cpp
	module load gcc/11.2.0;\
	$(CC) $(CFLAGS) $(SRC)MDseq.cpp -lm -o MDseq.exe

clean:
	rm ./MD*.exe

runseq:
	./MDseq.exe < inputdata.txt

runpar:
	export OMP_NUM_THREADS=40;\
	./MDpar.exe < inputdata.txt
