SRC = $(wildcard data/*)


.PHONY: fmt


all: fmt README.md

fmt:
	go fmt render-template.go

README.md: README.template.md render-template.go $(SRC)
	go run render-template.go > README.md
