package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
)

func main() {
	responSize("https://example.com/")
	responSize("https://golang.org/")
	responSize("https://golang.org/doc/")
}

func responSize(url string) {
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
	fmt.Println(len(body))
}
