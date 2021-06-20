package main

import (
	//"fmt"
	"log"
	"net/http"
)

func viewHandler(writer http.ResponseWriter, req *http.Request) {
	message := []byte("Hello, web!")
	_, err := writer.Write(message)
	if err != nil {
		log.Fatal(err)
	}
}
func viewHandlerr(writer http.ResponseWriter, req *http.Request) {
	message := []byte("Helloöw, taksim!")
	_, err := writer.Write(message)
	if err != nil {
		log.Fatal(err)
	}
}

func main() {
	http.HandleFunc("/hello", viewHandler)
	http.HandleFunc("/helloöw", viewHandlerr)
	err := http.ListenAndServe("localhost:8080", nil)
	log.Fatal(err)
}
