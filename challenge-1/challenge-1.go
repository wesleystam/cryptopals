package main

import (
	"encoding/base64"
	"encoding/hex"
	"fmt"
)

func main() {
	input := "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
	hexDecoded, _ := hex.DecodeString(input)
	encode := base64.StdEncoding.EncodeToString(hexDecoded)
	fmt.Println(encode)
}
