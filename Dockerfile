FROM dockerfile/java:oracle-java8
RUN apt-get update && apt-get -qq install maven
ADD fetch-war.sh fetch-war.sh
VOLUME /opt/glassfish4/glassfish/domains/domain1/autodeploy
ENTRYPOINT [ "fetch-war.sh" ]
