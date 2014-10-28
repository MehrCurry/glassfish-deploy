#!/bin/sh

mvn dependency:copy -DoutputDirectory=/opt/glassfish4/glassfish/domains/domain1/autodeploy -Dartifact=$1 -Dmaven.repo.remote=$2

