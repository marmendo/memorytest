FROM registry.access.redhat.com/rhel7.2
#FROM fedora:23
MAINTAINER Mario Mendoza
RUN yum -y install procps && \
    yum -y install java-1.8.0-openjdk-headless.x86_64 && \
    mkdir /opt/scc
ADD ./target/scc-server-1.0.1.jar /opt/scc/scc-server-1.0.1.jar
EXPOSE 8888 8889
CMD java -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=8889 -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -jar /opt/scc/scc-server-1.0.1.jar
