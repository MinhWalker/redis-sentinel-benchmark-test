# Created machine
docker-machine create --driver virtualbox redis-sentinel-1

# Stop all virtual machine
docker-machine stop redis-sentinel-1

# Config limit bandwidth
./config.sh redis-sentinel-1

# Start all virtual machine
docker-machine start redis-sentinel-1

# Launch the containers  (1 master 1 slave)
docker-compose $(docker-machine config redis-sentinel-1) up --scale redis-sentinel=3 -d

# Config AOF all
echo "\nBenchmark with master and slave using AOF persistance config\n"
./aof-all-config.sh

echo "\nSetup for benchmark testing:\n2.6 GHz 6-Core Intel Core i7\n1024MB Ram\nLimit Disk IO Speed: 200MB/s\n"
echo "Client:\nTotal number of request: 2000000\nKey space: 100000\nPineline: 16\n"
echo "Request type: GET, SET, LPUSH, LPOP\n"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-benchmark -a 'str0ng_passw0rd' -r 100000 -n 2000000 -t get,set,lpush,lpop -P 16 
echo "\n---------------------------------------------\n"

# Config RDB all
echo "Benchmark with master and slave using RDB persistance config\n"
./rdb-all-config.sh 

echo "\nSetup for benchmark testing:\n2.6 GHz 6-Core Intel Core i7\n1024MB Ram\nLimit Disk IO Speed: 200MB/s\n"
echo "Client:\nTotal number of request: 2000000\nKey space: 100000\nPineline: 16\n"
echo "Request type: GET, SET, LPUSH, LPOP\n"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-benchmark -a 'str0ng_passw0rd' -r 100000 -n 2000000 -t get,set,lpush,lpop -P 16 
echo "\n---------------------------------------------\n"

# Config none persistance 
echo "Benchmark with master and slave using none persistance config\n"
./non-persis-config.sh

echo "\nSetup for benchmark testing:\n2.6 GHz 6-Core Intel Core i7\n1024MB Ram\nLimit Disk IO Speed: 200MB/s\n"
echo "Client:\nTotal number of request: 2000000\nKey space: 100000\nPineline: 16\n"
echo "Request type: GET, SET, LPUSH, LPOP\n"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-benchmark -a 'str0ng_passw0rd' -r 100000 -n 2000000 -t get,set,lpush,lpop -P 16 
echo "\n---------------------------------------------\n"

# Config master RDB slave AOF
echo "Benchmark with master using RDB and slave using AOF persistance config\n"
./master_rdb-slave_aof-config.sh

echo "\nSetup for benchmark testing:\n2.6 GHz 6-Core Intel Core i7\n1024MB Ram\nLimit Disk IO Speed: 200MB/s\n"
echo "Client:\nTotal number of request: 2000000\nKey space: 100000\nPineline: 16\n"
echo "Request type: GET, SET, LPUSH, LPOP\n"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-benchmark -a 'str0ng_passw0rd' -r 100000 -n 2000000 -t get,set,lpush,lpop -P 16 
echo "\n---------------------------------------------\n"

# Config master RDB slave none
echo "Benchmark with master using RDB and slave using none persistance config\n"
./master_rdb-slave_none-config.sh

echo "\nSetup for benchmark testing:\n2.6 GHz 6-Core Intel Core i7\n1024MB Ram\nLimit Disk IO Speed: 200MB/s\n"
echo "Client:\nTotal number of request: 2000000\nKey space: 100000\nPineline: 16\n"
echo "Request type: GET, SET, LPUSH, LPOP\n"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-benchmark -a 'str0ng_passw0rd' -r 100000 -n 2000000 -t get,set,lpush,lpop -P 16 
echo "\n---------------------------------------------\n"

# Config master AOF slave RDB
echo "Benchmark with master using AOF and slave using RDB persistance config\n"
./master_aof-slave_rdb-config.sh

echo "\nSetup for benchmark testing:\n2.6 GHz 6-Core Intel Core i7\n1024MB Ram\nLimit Disk IO Speed: 200MB/s\n"
echo "Client:\nTotal number of request: 2000000\nKey space: 100000\nPineline: 16\n"
echo "Request type: GET, SET, LPUSH, LPOP\n"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-benchmark -a 'str0ng_passw0rd' -r 100000 -n 2000000 -t get,set,lpush,lpop -P 16 
echo "\n---------------------------------------------\n"

# Config master AOF slave none
echo "Benchmark with master using AOF and slave using none persistance config\n"
./master_aof-slave_none-config.sh

echo "\nSetup for benchmark testing:\n2.6 GHz 6-Core Intel Core i7\n1024MB Ram\nLimit Disk IO Speed: 200MB/s\n"
echo "Client:\nTotal number of request: 2000000\nKey space: 100000\nPineline: 16\n"
echo "Request type: GET, SET, LPUSH, LPOP\n"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-benchmark -a 'str0ng_passw0rd' -r 100000 -n 2000000 -t get,set,lpush,lpop -P 16 
echo "\n---------------------------------------------\n"

# Config master none slave AOF
echo "Benchmark with master using none and slave using AOF persistance config\n"
./master_none-slave_aof-config.sh

echo "\nSetup for benchmark testing:\n2.6 GHz 6-Core Intel Core i7\n1024MB Ram\nLimit Disk IO Speed: 200MB/s\n"
echo "Client:\nTotal number of request: 2000000\nKey space: 100000\nPineline: 16\n"
echo "Request type: GET, SET, LPUSH, LPOP\n"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-benchmark -a 'str0ng_passw0rd' -r 100000 -n 2000000 -t get,set,lpush,lpop -P 16 
echo "\n---------------------------------------------\n"

# Config master none slave RDB
echo "Benchmark with master using none and slave using RDB persistance config\n"
./master_none-slave_rdb-config.sh

echo "\nSetup for benchmark testing:\n2.6 GHz 6-Core Intel Core i7\n1024MB Ram\nLimit Disk IO Speed: 200MB/s\n"
echo "Client:\nTotal number of request: 2000000\nKey space: 100000\nPineline: 16\n"
echo "Request type: GET, SET, LPUSH, LPOP\n"
docker $(docker-machine config redis-sentinel-1) exec -it redis-sentinel-benchmark-test_redis_1 redis-benchmark -a 'str0ng_passw0rd' -r 100000 -n 2000000 -t get,set,lpush,lpop -P 16 
echo "\n---------------------------------------------\n"

