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

	//Exercise

	var price int = 200
	fmt.Println("Price is", price, "dollars")

	var taxRate float64 = 0.08
	var tax float64 = taxRate * float64(price)
	var total float64 = tax + float64(price)
	fmt.Println("total cost is", total, "dollars")

	var availableFunds int = 240
	fmt.Println(availableFunds, "dollars available")
	fmt.Println("Withing budget?", total <= float64(availableFunds))
}
