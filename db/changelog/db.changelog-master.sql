--liquibase formatted sql

--changeset me:4
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

--changeset me:5
DROP TABLE users1;

--changeset me:6
CREATE TABLE users2 (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

--changeset me:7
DROP TABLE users2;

--changeset me:8
CREATE TABLE users3 (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);