package main

import (
	"fmt"
)

func negate(MyBoolean *bool) {
	*MyBoolean = !*MyBoolean
}

func main() {
	truth := true
	negate(&truth)
	fmt.Println(truth)
	lies := false
	negate(&lies)
	fmt.Println(lies)
}
