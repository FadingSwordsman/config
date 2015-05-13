#!/bin/bash
docker rm $(docker ps -a -q --filter "status=exited")
