all:
	docker build -t itomaldonado/hadoop-base:latest hadoop-base
	docker build -t itomaldonado/hadoop-master:latest hadoop-master
	docker build -t itomaldonado/hadoop-slave:latest hadoop-slave
	docker-compose build

.PHONY: test clean

run:
	docker-compose up -d
	# echo "http://localhost:9870 for HDFS"
	echo "http://localhost:50070 for HDFS"
	echo "http://localhost:8088 for YARN"

down:
	docker-compose down
