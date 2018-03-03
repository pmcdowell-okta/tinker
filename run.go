package main

import (
    "fmt"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hi theres3")
}

func main() {
    http.HandleFunc("/", handler)
    http.ListenAndServe(":80", nil) //non ssl
// 	http.ListenAndServeTLS(":443", "cert.pem", "key.pem", nil) //ssl

}
