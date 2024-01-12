CREATE DATABASE drugescape;
USE drugescape;

CREATE TABLE member (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    picture VARCHAR(255),
    role VARCHAR(255)
);

CREATE TABLE report (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    point INT,
    accumulated_days INT,
    maximum_days INT,
    daily_goals INT
);

CREATE TABLE management (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    stop_drug VARCHAR(255),
    exercise VARCHAR(255),
    meal VARCHAR(255),
    medication VARCHAR(255),
    report_id BIGINT,
    FOREIGN KEY(report_id) REFERENCES report(id)
);

CREATE TABLE donation (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    donating_point INT,
    donated_point INT,
    report_id BIGINT,
    FOREIGN KEY(report_id) REFERENCES report(id)
);