all:	naive.cu sequential.cu first_add.cu stride.cu unroll.cu multiple.cu timer.c
	nvcc naive.cu timer.c -o naive
	nvcc sequential.cu timer.c -o sequential
	nvcc first_add.cu timer.c -o first_add
	nvcc stride.cu timer.c -o stride
	nvcc unroll.cu timer.c -o unroll
	nvcc multiple.cu timer.c -o multiple
# module load cuda/5.0
# module load gcc/4.4.3

naive:	naive.cu timer.c
	nvcc naive.cu timer.c -o naive

seq:	sequential.cu  timer.c
	nvcc sequential.cu timer.c -o sequential

first:	first_add.cu timer.c
	nvcc first_add.cu timer.c -o first_add

stride:	stride.cu timer.c
	nvcc stride.cu timer.c -o stride

unroll:	unroll.cu timer.c
	nvcc unroll.cu timer.c -o unroll

mult:	multiple.cu timer.c
	nvcc multiple.cu timer.c -o multiple

run:
	qsub cuda.sh
