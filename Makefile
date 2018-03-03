setup:
	echo "nothing to setup"

build:
	@killall run || true
	go build run.go
	echo "Finished build"

launch:
	@sudo killall run || true
	sudo bash -c 'screen -d -m ./run &'
stop:
	killall run


