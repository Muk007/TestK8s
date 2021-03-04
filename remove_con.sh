#!/bin/bash
CON=`docker ps -a | awk '{print $1}' | sed -n 2p`
for i in $CON; do
	docker rm $i --force
done
