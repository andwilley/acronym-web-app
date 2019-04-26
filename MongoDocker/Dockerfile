FROM mongo
ENV MONGO_INITDB_DATABASE start
EXPOSE 27017
COPY mongoDBInjectScript.js /docker-entrypoint-initdb.d/
