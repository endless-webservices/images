FROM quay.io/wildfly/wildfly:37.0.1.Final-jdk21

USER root

RUN microdnf -y install ruby && microdnf clean all

RUN gem install asciidoctor-pdf && gem clean

USER jboss
