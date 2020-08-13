#!/bin/bash
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-cli -a 'str0ng_passw0rd' config set appendonly "no"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-cli -a 'str0ng_passw0rd' config set save "60 1000"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis-slave_1 redis-cli -a 'str0ng_passw0rd' config set appendonly "no"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis-slave_1 redis-cli -a 'str0ng_passw0rd' config set save "60 1000"