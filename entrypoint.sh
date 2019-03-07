#!/bin/bash

/spark/bin/spark-submit \
	--master ${SPARK_MASTER} \
	--class com.example.MyFirstScalaSpark \
	/project/target/scala-2.11/myfirstscalaspark_2.11-1.0.jar \
	${FILENAME}
