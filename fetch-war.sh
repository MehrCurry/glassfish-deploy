#!/bin/sh

MVN_HOME=/opt/apache-maven-3.2.3
PATH=$MVN_HOME/bin:$PATH
mvn dependency:copy -DoutputDirectory=$2 -Dartifact=$1

