# Redis-cluster with docker-machine benchmark test

## Description

Tool test benchmark for [redis-sentinel](https://redis.io/topics/sentinel). I'm setup cluster with 1 master node, 1 slave node and 3 sentinel for watching. Provide resources for each node: 100% one core, 1024 Mb RAM, limit disk IO speed 200mb/s (you can modify this number in config.sh file). 

## Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [Docker-machine](https://github.com/docker/machine)
- [virtualBox](https://www.virtualbox.org/) (5.0)

## Setup 

Clone project from github

```shell
$ clone https://github.com/MinhWalker/redis-sentinel-benchmark-test
```

Run with command

```shell
./redis-benchmark.sh
```

___Importain___: you need permission to execute the file `chmod 777 ./${filename}`

## Case test

### Number of request: 2000000 , Key space: 100000, Pineline: 16 

- Master and slave using AOF persistance 
- Master and slave using RDB persistance
- Master and slave using none persistance
- Master using RDB and slave using AOF persistance
- Master using RDB and slave using none persistance
- Master using AOF and slave using RDB persistance
- Master using AOF and slave using none persistance
- Master using none and slave using AOF persistance
- Master using none and slave using RDB persistance

> __Important:__ You can custom case test on redis-benchmark.sh file.  

## Ouput 

Output example

```
====== SET ======
  2000000 requests completed in 19.88 seconds
  50 parallel clients
  3 bytes payload
  keep alive: 1
  host configuration "save": 
  host configuration "appendonly": yes
  multi-thread: no

0.00% <= 1.3 milliseconds
0.00% <= 1.4 milliseconds
0.00% <= 1.5 milliseconds
0.01% <= 1.6 milliseconds
0.01% <= 1.7 milliseconds
0.02% <= 1.8 milliseconds
0.02% <= 2 milliseconds
0.07% <= 3 milliseconds
0.22% <= 4 milliseconds
1.33% <= 5 milliseconds
3.61% <= 6 milliseconds
22.35% <= 7 milliseconds
79.79% <= 8 milliseconds
89.66% <= 9 milliseconds
93.03% <= 10 milliseconds
94.84% <= 11 milliseconds
96.60% <= 12 milliseconds
97.56% <= 13 milliseconds
98.04% <= 14 milliseconds
98.49% <= 15 milliseconds
98.74% <= 16 milliseconds
98.85% <= 17 milliseconds
98.98% <= 18 milliseconds
99.08% <= 19 milliseconds
99.15% <= 20 milliseconds
99.24% <= 21 milliseconds
99.28% <= 22 milliseconds
99.36% <= 23 milliseconds
99.41% <= 24 milliseconds
99.47% <= 25 milliseconds
99.50% <= 26 milliseconds
99.53% <= 27 milliseconds
99.62% <= 28 milliseconds
99.70% <= 29 milliseconds
99.77% <= 30 milliseconds
99.82% <= 31 milliseconds
99.83% <= 32 milliseconds
99.86% <= 33 milliseconds
99.90% <= 34 milliseconds
99.94% <= 35 milliseconds
99.96% <= 36 milliseconds
99.98% <= 37 milliseconds
99.98% <= 38 milliseconds
99.99% <= 39 milliseconds
99.99% <= 40 milliseconds
100.00% <= 40 milliseconds
100628.93 requests per second

====== GET ======
  2000272 requests completed in 11.18 seconds
  50 parallel clients
  3 bytes payload
  keep alive: 1
  host configuration "save": 
  host configuration "appendonly": yes
  multi-thread: no

0.89% <= 1 milliseconds
36.83% <= 2 milliseconds
86.09% <= 3 milliseconds
95.77% <= 4 milliseconds
98.24% <= 5 milliseconds
99.04% <= 6 milliseconds
99.40% <= 7 milliseconds
99.68% <= 8 milliseconds
99.82% <= 9 milliseconds
99.93% <= 10 milliseconds
99.97% <= 11 milliseconds
99.99% <= 12 milliseconds
100.00% <= 13 milliseconds
100.00% <= 13 milliseconds
178931.22 requests per second

====== LPUSH ======
  2000384 requests completed in 29.89 seconds
  50 parallel clients
  3 bytes payload
  keep alive: 1
  host configuration "save": 
  host configuration "appendonly": yes
  multi-thread: no

0.00% <= 1 milliseconds
0.08% <= 2 milliseconds
0.53% <= 3 milliseconds
2.03% <= 4 milliseconds
5.11% <= 5 milliseconds
11.80% <= 6 milliseconds
45.77% <= 7 milliseconds
62.33% <= 8 milliseconds
69.80% <= 9 milliseconds
74.14% <= 10 milliseconds
77.37% <= 11 milliseconds
80.10% <= 12 milliseconds
82.35% <= 13 milliseconds
84.34% <= 14 milliseconds
86.04% <= 15 milliseconds
87.67% <= 16 milliseconds
88.98% <= 17 milliseconds
89.97% <= 18 milliseconds
90.77% <= 19 milliseconds
91.60% <= 20 milliseconds
92.14% <= 21 milliseconds
92.65% <= 22 milliseconds
93.06% <= 23 milliseconds
93.42% <= 24 milliseconds
93.83% <= 25 milliseconds
94.18% <= 26 milliseconds
94.57% <= 27 milliseconds
94.84% <= 28 milliseconds
95.16% <= 29 milliseconds
95.43% <= 30 milliseconds
95.66% <= 31 milliseconds
95.85% <= 32 milliseconds
96.07% <= 33 milliseconds
96.28% <= 34 milliseconds
96.48% <= 35 milliseconds
96.64% <= 36 milliseconds
96.76% <= 37 milliseconds
96.91% <= 38 milliseconds
97.06% <= 39 milliseconds
97.19% <= 40 milliseconds
97.31% <= 41 milliseconds
97.42% <= 42 milliseconds
97.59% <= 43 milliseconds
97.71% <= 44 milliseconds
97.81% <= 45 milliseconds
97.91% <= 46 milliseconds
98.00% <= 47 milliseconds
98.09% <= 48 milliseconds
98.18% <= 49 milliseconds
98.28% <= 50 milliseconds
98.36% <= 51 milliseconds
98.43% <= 52 milliseconds
98.48% <= 53 milliseconds
98.54% <= 54 milliseconds
98.57% <= 55 milliseconds
98.62% <= 56 milliseconds
98.65% <= 57 milliseconds
98.68% <= 58 milliseconds
98.74% <= 59 milliseconds
98.79% <= 60 milliseconds
98.84% <= 61 milliseconds
98.89% <= 62 milliseconds
98.96% <= 63 milliseconds
99.00% <= 64 milliseconds
99.05% <= 65 milliseconds
99.13% <= 66 milliseconds
99.14% <= 67 milliseconds
99.18% <= 68 milliseconds
99.21% <= 69 milliseconds
99.23% <= 70 milliseconds
99.25% <= 71 milliseconds
99.30% <= 72 milliseconds
99.33% <= 73 milliseconds
99.35% <= 74 milliseconds
99.38% <= 75 milliseconds
99.41% <= 76 milliseconds
99.43% <= 77 milliseconds
99.45% <= 78 milliseconds
99.47% <= 79 milliseconds
99.48% <= 80 milliseconds
99.49% <= 81 milliseconds
99.49% <= 82 milliseconds
99.51% <= 83 milliseconds
99.52% <= 84 milliseconds
99.53% <= 85 milliseconds
99.54% <= 86 milliseconds
99.56% <= 87 milliseconds
99.56% <= 88 milliseconds
99.57% <= 89 milliseconds
99.58% <= 90 milliseconds
99.60% <= 91 milliseconds
99.62% <= 92 milliseconds
99.63% <= 93 milliseconds
99.65% <= 94 milliseconds
99.66% <= 95 milliseconds
99.67% <= 96 milliseconds
99.67% <= 97 milliseconds
99.68% <= 98 milliseconds
99.69% <= 99 milliseconds
99.71% <= 100 milliseconds
99.72% <= 101 milliseconds
99.73% <= 102 milliseconds
99.74% <= 103 milliseconds
99.77% <= 104 milliseconds
99.79% <= 105 milliseconds
99.80% <= 106 milliseconds
99.81% <= 107 milliseconds
99.82% <= 108 milliseconds
99.82% <= 109 milliseconds
99.83% <= 110 milliseconds
99.84% <= 111 milliseconds
99.85% <= 112 milliseconds
99.85% <= 113 milliseconds
99.86% <= 114 milliseconds
99.87% <= 115 milliseconds
99.87% <= 116 milliseconds
99.88% <= 117 milliseconds
99.88% <= 119 milliseconds
99.88% <= 120 milliseconds
99.88% <= 125 milliseconds
99.88% <= 126 milliseconds
99.91% <= 127 milliseconds
99.91% <= 128 milliseconds
99.91% <= 129 milliseconds
99.91% <= 130 milliseconds
99.92% <= 134 milliseconds
99.93% <= 135 milliseconds
99.93% <= 137 milliseconds
99.93% <= 138 milliseconds
99.94% <= 139 milliseconds
99.94% <= 140 milliseconds
99.95% <= 141 milliseconds
99.96% <= 142 milliseconds
99.96% <= 143 milliseconds
99.96% <= 147 milliseconds
99.96% <= 148 milliseconds
99.96% <= 152 milliseconds
99.96% <= 154 milliseconds
99.97% <= 156 milliseconds
99.97% <= 157 milliseconds
99.98% <= 159 milliseconds
99.98% <= 163 milliseconds
99.98% <= 165 milliseconds
99.99% <= 273 milliseconds
99.99% <= 277 milliseconds
99.99% <= 278 milliseconds
99.99% <= 279 milliseconds
100.00% <= 281 milliseconds
100.00% <= 281 milliseconds
66936.05 requests per second

====== LPOP ======
  2000064 requests completed in 16.40 seconds
  50 parallel clients
  3 bytes payload
  keep alive: 1
  host configuration "save": 
  host configuration "appendonly": yes
  multi-thread: no

0.00% <= 1 milliseconds
0.04% <= 2 milliseconds
0.39% <= 3 milliseconds
3.08% <= 4 milliseconds
15.63% <= 5 milliseconds
59.93% <= 6 milliseconds
84.00% <= 7 milliseconds
91.03% <= 8 milliseconds
93.99% <= 9 milliseconds
95.58% <= 10 milliseconds
96.88% <= 11 milliseconds
97.75% <= 12 milliseconds
98.35% <= 13 milliseconds
98.72% <= 14 milliseconds
98.90% <= 15 milliseconds
99.03% <= 16 milliseconds
99.20% <= 17 milliseconds
99.31% <= 18 milliseconds
99.36% <= 19 milliseconds
99.46% <= 20 milliseconds
99.57% <= 21 milliseconds
99.67% <= 22 milliseconds
99.76% <= 23 milliseconds
99.79% <= 24 milliseconds
99.81% <= 25 milliseconds
99.86% <= 26 milliseconds
99.89% <= 27 milliseconds
99.91% <= 28 milliseconds
99.95% <= 29 milliseconds
99.97% <= 30 milliseconds
99.98% <= 31 milliseconds
100.00% <= 31 milliseconds
121925.39 requests per second
```


