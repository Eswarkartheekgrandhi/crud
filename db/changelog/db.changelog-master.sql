--liquibase formatted sql

--changeset me:1
CREATE TABLE users1 (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
