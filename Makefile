setup:
	echo "nothing to setup"

build:
	go build run.go
	bash -c ./run&

run:
	bash -c ./run

stop:
	killall run

