setup:
        echo "nothing to setup"

build:
        go build run.go
        bash -c ./run&
        ../githubcheck $$github
        make stop

run:
        bash -c ./run

stop:
        killall run

cc:
        echo $$github


