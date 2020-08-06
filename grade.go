package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	fmt.Print("Bişeyler yaz")
	reader := bufio.NewReader(os.Stdin)
	input, _ := reader.ReadString('\n')
	fmt.Println(input)
}
