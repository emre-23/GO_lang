package main

import (
	"fmt"
)

func main() {

	if true {
		fmt.Println("true")
	}
	if !false {
		fmt.Println("!false")

	}
	if false {
		fmt.Println("if false")
	} else if true {
		fmt.Println("else if true")
	}
}
