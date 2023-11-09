package main

import "fmt"

func main() {
	fmt.Print(Soma(10, 10))
}

func Soma(a int, b int) int {
	return a + b
}