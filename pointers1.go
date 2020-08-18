package main

import (
	"fmt"
)

func main() {
	/*var myInt int
	var myIntPointer *int
	myIntPointer = &myInt
	fmt.Println(myIntPointer)
	var myFloat float64
	fmt.Println(reflect.TypeOf(&myFloat)) */

	/*myInt := 4
	fmt.Println(myInt)
	myIntPointer := &myInt
	*myIntPointer = 8
	fmt.Println(myIntPointer)  // write the pointer itself
	fmt.Println(*myIntPointer) // write the value at pointer
	fmt.Println(myInt)         //Updated th pointer value

	myFloat := 8.7
	myFloatPointer := &myFloat
	fmt.Println(myFloatPointer)  // write the pointer itself
	fmt.Println(*myFloatPointer) // write the value at pointer */

	var myInt int
	var myIntPointer *int
	myInt = 42
	myIntPointer = &myInt
	//fmt.Println(myInt)
	//fmt.Println(myIntPointer)
	fmt.Println(*myIntPointer)

}
