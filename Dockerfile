FROM dockerfile/java:oracle-java8
RUN apt-get update && apt-get -qq install maven
VOLUME /opt/glassfish4/glassfish/domains/domain1/autodeploy
ENTRYPOINT ["maven" ,"dependency:copy" "-DoutputDirectory=/opt/glassfish4/glassfish/domains/domain1/autodeploy"]


