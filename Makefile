setup:
	echo "nothing to setup"

build:
	@killall run || true
	go build run.go
	#./run &
	echo "Finished build"

launch:
	@sudo killall run || true
	sudo bash -c 'screen -d -m ./run &'
	sleep 2
	echo "done"

run:
	bash -c ./run

stop:
	killall run


