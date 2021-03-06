package main

import (
	"bufio"
	"fmt"
	"log"
	"math/rand"
	"os"
	"strconv"
	"strings"
	"time"
)

func main() {
	seconds := time.Now().Unix()
	rand.Seed(seconds)
	target := rand.Intn(100) + 1
	fmt.Println("I've choosen a random number between 1 and 100.")
	fmt.Println("Can you guess it?")
	//fmt.Println(target)

	reader := bufio.NewReader(os.Stdin) // create a bufio reader to type keyboard input
	success := false
	for guesses := 0; guesses < 10; guesses++ {
		fmt.Println("You have", 10-guesses, "guesses left.")
		fmt.Print("Make a guess:")
		input, err := reader.ReadString('\n') //read the what user types until they press Enter
		if err != nil {
			log.Fatal(err)
		}
		input = strings.TrimSpace(input)  //remove the new line
		guess, err := strconv.Atoi(input) //conver tthe input string to an integer
		if err != nil {
			log.Fatal(err)
		}
		if guess < target {
			fmt.Println("Oops,.Your guess was LOW")
		} else if guess > target {
			fmt.Println("Oops.Your guess was HIGH")
		} else {
			success = true // if the guess is correct, do not write last the error message
			fmt.Println("Good job! You guessed it!")
			break
		}

	}
	if !success {
		fmt.Println("Sorry, you didn't guess my number", "It was", target)
	}
}
