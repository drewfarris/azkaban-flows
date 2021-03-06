#!/bin/bash

HADOOP_HOME="/usr/lib/hadoop"
HADOOP_CONF_DIR="/etc/hadoop/conf"
HADOOP_BIN="/usr/bin/hadoop"

MAPREDUCE_BASE="/usr/lib/hadoop-mapreduce"
EXAMPLES_JAR="${MAPREDUCE_BASE}/hadoop-mapreduce-examples-2.6.0-cdh5.4.2.jar"

INPUT_DIR="random-words"
OUTPUT_DIR="word-mean"

${HADOOP_BIN} jar ${EXAMPLES_JAR} wordmean \
    ${INPUT_DIR} ${OUTPUT_DIR}
