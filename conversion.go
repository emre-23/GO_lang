package main

import (
	"fmt"
)

func main() {
	var a float64 = 1.2
	var b int = 2
	fmt.Println("Area is", a*float64(b))
	fmt.Println("a > b?", a > float64(b))
	b = int(a)
	// fmt.Println(b) only shows the integer part less 0.2 than real value

}
