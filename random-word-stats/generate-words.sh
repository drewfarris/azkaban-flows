#!/bin/bash

HADOOP_HOME="/usr/lib/hadoop"
HADOOP_CONF_DIR="/etc/hadoop/conf"
HADOOP_BIN="/usr/bin/hadoop"

MAPREDUCE_BASE="/usr/lib/hadoop-mapreduce"
EXAMPLES_JAR="${MAPREDUCE_BASE}/hadoop-mapreduce-examples-2.6.0-cdh5.4.2.jar"

OUTPUT_DIR="random-words"

${HADOOP_BIN} jar ${EXAMPLES_JAR} randomtextwriter \
    -Dmapreduce.randomtextwriter.totalbytes=104857600 \
    -Dmapreduce.randomtextwriter.bytespermap=104857600 \
    ${OUTPUT_DIR}

