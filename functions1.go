package main

import "fmt"

func main() {

	var width, height, area float64
	width = 4.2
	height = 4.0
	area = width * height
	fmt.Println(area)
	fmt.Printf("%.3f liters needed\n", area/10)
}
