package main

import (
	"encoding/hex"
	"fmt"
)

func main() {
	inputA, _ := hex.DecodeString("1c0111001f010100061a024b53535009181c")

	inputB, _ := hex.DecodeString("686974207468652062756c6c277320657965")
	var out []byte

	for i := 0; i < len(inputA); i++ {
		out = append(out, inputA[i]^inputB[i])
	}

	fmt.Println(hex.EncodeToString(out))
}
