package main

import (
	"fmt"
	"net/http"
	"time"
)

func wrap(s string) string {
	return fmt.Sprintf(`<!doctype html><html><head><title>Current Time</title></head><body>%s</body><html>`, s)
}

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "%s", wrap(time.Now().Format(time.RFC850)))
	})
	panic(http.ListenAndServe(":8080", nil))
}
