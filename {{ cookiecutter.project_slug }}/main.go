package main

import (
	"fmt"
	"os"
)

func main() {
	args := os.Args[1:]

	if len(args) > 0 && (args[0] == "version" || args[0] == "-version") {
		buildInfo := GetBuildInfo()
		fmt.Println(buildInfo)
		os.Exit(0)
	}

	fmt.Println("Hello, World!")
}
