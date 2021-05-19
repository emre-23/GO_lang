package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"time"
)

func main() {
	var size int
	size = responSize("https://example.com/")
	fmt.Println(size)
	size = responSize("https://golang.org/")
	fmt.Println(size)
	size = responSize("https://golang.org/doc/")
	fmt.Println(size)
	time.Sleep(5 * time.Second)
}

func responSize(url string) int {
	fmt.Println("Getting", url)
	response, err := http.Get(url)
	if err != nil {
		log.Fatal(err)
	}
	defer response.Body.Close()
	body, err := ioutil.ReadAll(response.Body)
	if err != nil {
		log.Fatal(err)
	}
	return len(body)
	//fmt.Println(len(body))
}
