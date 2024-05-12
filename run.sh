#!/bin/bash

go mod init example.com/hello

version="$(git describe --tags --always --dirty)"
commit="$(git rev-parse HEAD)"
short_commit="$(git rev-parse --short HEAD)"
built="$(date)"
go_version="$(go version | awk '{print $3, $4}')"

ldflags="-X 'main.Version=${version}' \
-X 'main.FullGitSHA=${commit}' \
-X 'main.ShortGitSHA=${short_commit}' \
-X 'main.Date=${built}' \
-X 'main.GoVersion=${go_version}'"

go run -ldflags "$ldflags" hello.go version.go
