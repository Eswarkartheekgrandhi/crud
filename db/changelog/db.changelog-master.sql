--liquibase formatted sql

--changeset me:1
DROP TABLE IF EXISTS users3;
DROP TABLE IF EXISTS users2;
DROP TABLE IF EXISTS users1;
DROP TABLE IF EXISTS users;

--changeset me:2
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

--changeset me:3
CREATE TABLE users2 (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

--changeset me:4
CREATE TABLE users3 (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
