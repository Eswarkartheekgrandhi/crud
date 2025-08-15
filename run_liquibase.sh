#!/bin/bash
set -e  # exit if any command fails

liquibase \
  --url="jdbc:postgresql://localhost:5432/cruddb" \
  --username="postgres" \
  --password="7702" \
  --changeLogFile="db/changelog/db.changelog-master.sql" \
  update
