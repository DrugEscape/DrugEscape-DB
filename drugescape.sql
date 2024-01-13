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
    accumulatedDays INT,
    maximumDays INT,
    dailyGoals INT
);

CREATE TABLE management (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    stopDrug VARCHAR(255),
    exercise VARCHAR(255),
    meal VARCHAR(255),
    medication VARCHAR(255),
    reportId BIGINT,
    FOREIGN KEY(reportId) REFERENCES report(id)
);

CREATE TABLE donation (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    donatingPoint INT,
    donatedPoint INT,
    reportId BIGINT,
    FOREIGN KEY(reportId) REFERENCES report(id)
);

CREATE TABLE board (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    content VARCHAR(255),
    image VARCHAR(255),
    likeCount INT,
    viewCount INT,
    commentCount INT,
    createdAt datetime,
    modifiedAt datetime,
    memberId BIGINT,
    FOREIGN KEY(memberId) REFERENCES member(id)
);

CREATE TABLE comment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(255),
    createdAt datetime,
    modifiedAt datetime,
    memberId BIGINT,
    boardId BIGINT,
    FOREIGN KEY(memberId) REFERENCES member(id),
    FOREIGN KEY(boardId) REFERENCES board(id)
);

CREATE TABLE heart (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    memberId BIGINT,
    boardId BIGINT,
    FOREIGN KEY(memberId) REFERENCES member(id),
    FOREIGN KEY(boardId) REFERENCES board(id)
);
