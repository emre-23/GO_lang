package main

import (
	"fmt"
	"reflect"
)

func main() {
	fmt.Println(reflect.TypeOf(42))
	fmt.Println(reflect.TypeOf("Emre"))
	var quantity int
	var length, width float64
	var customername string

	quantity = 4
	length, width = 1.2, 2.4
	customername = "Emre"

	fmt.Println(customername)
	fmt.Println("has ordered", quantity, "sheets")
	fmt.Println("each with an area of")
	fmt.Println(length*width, "square meters")

}
