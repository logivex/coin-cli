package main

import "fmt"

// Set at build time via -ldflags (see Makefile / .goreleaser.yaml).
var (
	version = "dev"
	commit  = "none"
	date    = "unknown"
)

func main() {
	fmt.Printf("coin-cli %s (%s, %s)\n", version, commit, date)
}
