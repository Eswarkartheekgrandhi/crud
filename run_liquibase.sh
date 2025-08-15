#!/bin/bash
set -e  # exit if any command fails

./liquibase \
  --url="jdbc:postgresql://localhost:5432/cruddb" \
  --username=postgres \
  --password=your_password \
  --changeLogFile=db/changelog/db.changelog-master.sql \
  --classpath=lib/postgresql-42.7.3.jar \
  clearCheckSums

