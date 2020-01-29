export GOPATH=$(PWD)

bin/ts: src/ts/main.go
	go install ts

bin/linux_amd64/ts: src/ts/main.go
	GOOS=linux GOARCH=amd64 go install ts

docker: bin/linux_amd64/ts Dockerfile
	docker build .

clean:
	rm -f bin/ts bin/linux_amd64/ts

.PHONY: clean docker
