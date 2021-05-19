package main

import (
	"fmt"
)

func paintNeeded(width float64, height float64) {
	area := width * height
	fmt.Printf("%.2f liters needed\n", area/10.0)
}
func functionA(a int, b int) {
	fmt.Println(a + b)
}
func functionB(a int, b int) {
	fmt.Println(a * b)
}
func functionC(a bool) {
	fmt.Println(!a)
}
func functionD(a string, b int) {
	for i := 0; i < b; i++ {
		fmt.Print(a)
	}
	fmt.Println()
}

func main() {
	paintNeeded(4.2, 3.0)
	paintNeeded(5.2, 3.5)
	paintNeeded(5.0, 3.3)
	functionA(2, 3)
	functionB(2, 3)
	functionC(true)
	functionD("$", 4)
	functionA(5, 6)
	functionB(5, 6)
	functionC(false)
	functionD("ha", 3)
}
