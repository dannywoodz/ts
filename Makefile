export GOPATH=$(PWD)

bin/ts: src/ts/main.go
	go install ts

clean:
	rm -f bin/djw

.PHONY: clean
