package main

import "fmt"


func fib(x, y int) int {
	if x >= 4000000 {
		return 0
	}
	if x % 2 == 0 {
		return x + fib(x+y, x)
	}
	return fib(x+y, x)
}


func main() {
	fmt.Println(fib(1, 1))
}