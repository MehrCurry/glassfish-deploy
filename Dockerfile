FROM dockerfile/java:oracle-java8
RUN cd /opt && wget http://mirror.arcor-online.net/www.apache.org/maven/maven-3/3.2.3/binaries/apache-maven-3.2.3-bin.tar.gz && tar xzf apache-maven-3.2.3-bin.tar.gz && rm apache-maven-3.2.3-bin.tar.gz
ADD fetch-war.sh /opt/fetch-war.sh
ADD pom.xml /opt/pom.xml
RUN chmod +x /opt/fetch-war.sh
ENV MVN_HOME /opt/apache-maven-3.2.3
WORKDIR /opt
RUN $MVN_HOME/bin/mvn dependency:list-repositories
VOLUME /opt/glassfish4/glassfish/domains/domain1/autodeploy
ENTRYPOINT [ "/opt/fetch-war.sh" ]
