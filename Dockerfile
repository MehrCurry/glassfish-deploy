FROM busybos
ADD fetch-war.sh
VOLUME /opt/glassfish4/glassfish/domains/domain1/autodeploy
