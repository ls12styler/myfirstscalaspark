#!/bin/bash

PROJECT_NAME=myfirstscalaspark
JAR_PATH=`ls /project/${PROJECT_NAME}*.jar`

if [ -z "$MAIN_CLASS" ]; then
	MAIN_CLASS="com.example.MyFirstScalaSpark"
fi

/spark/bin/spark-submit \
	--master ${SPARK_MASTER} \
	--class ${MAIN_CLASS} \
	${JAR_PATH} \
	${FILENAME}
