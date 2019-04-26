FROM store/oracle/serverjre:8
COPY target/acronym-web-app-0.0.1-SNAPSHOT.jar /usr/local/lib/
EXPOSE 8080
CMD  ["java", "-jar", "/usr/local/lib/acronym-web-app-0.0.1-SNAPSHOT.jar"]
