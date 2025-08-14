#!/bin/bash
set -e

docker run --rm \
  -v "$(pwd)":/liquibase/changelog \
  liquibase/liquibase:latest \
  --url="jdbc:postgresql://postgres:5432/cruddb" \
  --username="postgres" \
  --password="7702" \
  --changeLogFile="db/changelog/db.changelog-master.xml" \
  --classpath=/liquibase/changelog/lib/postgresql-42.7.3.jar \
  update
