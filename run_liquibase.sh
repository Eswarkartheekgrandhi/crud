#!/bin/bash
set -e  # exit if any command fails

liquibase \
            --url="jdbc:postgresql://postgres:5432/cruddb" \
            --username=postgres \
            --password=7702 \
            --changeLogFile=db/changelog/db.changelog-master.xml \
            --classpath=lib/postgresql-42.7.3.jar \
            update
