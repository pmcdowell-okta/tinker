#!/bin/sh
  
#./githubcheck https://github.com/pmcdowell-okta/tinker.git

echo "cleaning"
ssh -i /Users/patrickmcdowell/Box\ Sync/amazonec1.pem  ubuntu@ec2-52-23-192-159.compute-1.amazonaws.com "rm -rf github;mkdir -p github; cd github;git clone https://github.com/pmcdowell-okta/tinker.git;cd * ;sudo make build; echo done; exit"
echo "killing"
ssh -i /Users/patrickmcdowell/Box\ Sync/amazonec1.pem  ubuntu@ec2-52-23-192-159.compute-1.amazonaws.com "sudo killall run"
echo "Launching!"
ssh -i /Users/patrickmcdowell/Box\ Sync/amazonec1.pem  ubuntu@ec2-52-23-192-159.compute-1.amazonaws.com "cd github; cd *;sudo screen -d -m make launch; echo done"
echo "done"
