build:
	go build -v -race ./...

test:
	go test -v ./...

build-cli:
	go build -o bin/whatsapp cmd/main.go

format:
	go fmt ./... && find . -type f -name "*.go" | cut -c 3- | xargs -I{} gofumpt -w "{}"