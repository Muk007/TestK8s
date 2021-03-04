#!/bin/bash
IMAGE=`docker images -a | awk  '{print $3}' | sed -n '2,$p'`
for i in $IMAGE; do
	docker rmi $i
done
