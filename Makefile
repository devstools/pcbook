gen:
	protoc --proto_path=proto --go_out=pb --go_opt=paths=source_relative proto/*.proto
	
clean:
	rm pb/*.pb

test: 
	go test -cover -race ./...

.PHONY: gen clean test

