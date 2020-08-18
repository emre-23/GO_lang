package main

import (
	"errors"
	"fmt"
	"math"
)
func floatParts(number float64) (integerPart int, fractionalPart float64) {
	wholeNumber := math.Floor(number)
	return int(wholeNumber), number- wholeNumber

func manyReturns() (int, bool, string) {
	return 1, true, "selam"
}

func main() {
	err := errors.New("height can't be negative")
	fmt.Println(err.Error())

	myInt, myBool, myString := manyReturns()
	fmt.Println(myInt, myBool, myString)

	cans, remainder := floatParts(1.26)
	fmt.Println(cans, remainder)
}
