setup:
	echo "nothing to setup"

build:
	@killall run || true
	go build run.go
	#./run &
	

run:
	bash -c ./run

stop:
	killall run

cc:
	echo $$github


