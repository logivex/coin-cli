VERSION ?= $(shell git describe --tags --always --dirty 2>/dev/null || echo dev)
COMMIT  ?= $(shell git rev-parse --short HEAD 2>/dev/null || echo none)
DATE    ?= $(shell date -u +%Y-%m-%dT%H:%M:%SZ)
LDFLAGS := -s -w -X main.version=$(VERSION) -X main.commit=$(COMMIT) -X main.date=$(DATE)

.PHONY: build run test cover lint fmt tidy clean

build:
	go build -ldflags "$(LDFLAGS)" -o bin/coin ./cmd/coin

run:
	go run ./cmd/coin $(ARGS)

test:
	go test -race ./...

cover:
	go test -race -coverprofile=coverage.out ./... && go tool cover -func=coverage.out

lint:
	golangci-lint run

fmt:
	gofmt -s -w .

tidy:
	go mod tidy

clean:
	rm -rf bin dist coverage.out
