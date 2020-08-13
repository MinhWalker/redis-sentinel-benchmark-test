# Created machine
$ docker-machine create --driver virtualbox redis-sentinel-1

# Stop all virtual machine
$ docker-machine stop redis-sentinel-1

# Config limit bandwidth
$ ./config.sh redis-sentinel-1

# Start all virtual machine
$ docker-machine start redis-sentinel-1

# Launch the containers  (1 master 1 slave)
$ docker-compose (docker-machine config redis-sentinel-1) up --scale redis-sentinel=3 -d

# Benchmark test 
$ docker (docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-benchmark -a 'str0ng_passw0rd' -t set,get,lpush,lpop -p 6379 -r 100000 -n 2000000 -q


# redis-sentinel-benchmark-test_redis_1
# redis-sentinel-benchmark-test_redis-slave_1

