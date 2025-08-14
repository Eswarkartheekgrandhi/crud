#!/bin/bash
set -e

echo "Running Liquibase update..."

liquibase \
  --url="jdbc:postgresql://$LIQUIBASE_HOST:$LIQUIBASE_PORT/$LIQUIBASE_DB" \
  --username="$LIQUIBASE_USER" \
  --password="$LIQUIBASE_PASS" \
  --changeLogFile=db/changelog/db.changelog-master.xml \
  update

echo "Liquibase update finished."
