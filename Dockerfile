FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift
COPY src/main/docker-files/acronym-web-app-0.0.1-SNAPSHOT.jar /usr/local/lib/
EXPOSE 8080
CMD  ["java", "-jar", "/usr/local/lib/acronym-web-app-0.0.1-SNAPSHOT.jar"]
