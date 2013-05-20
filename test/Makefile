# A Makefile template to verilog projects

all: test

# To assemble, call `iverilog`
test: test.v
	iverilog test.v -o test

# To execute, call `vvp`
run: test
	vvp test

