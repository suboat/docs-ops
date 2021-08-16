#!/bin/sh

set -ex;

# https://www.baeldung.com/spring-properties-file-outside-jar
exec /usr/bin/java \
  $JAVA_OPTS \
  -Dspring.profiles.active="prod" \
  -Dspring.config.location="application-prod.yml" \
  -Djava.io.tmpdir="/home/java-app/tmp" \
  -jar \
  /home/java-app/lib/app.jar \
  "$@"
