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
    daily_goals INT,
    member_id BIGINT,
    FOREIGN KEY(member_id) REFERENCES member(id)
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

CREATE TABLE board (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    content VARCHAR(255),
    image VARCHAR(255),
    like_count INT,
    view_count INT,
    comment_count INT,
    created_at datetime,
    modified_at datetime,
    member_id BIGINT,
    FOREIGN KEY(member_id) REFERENCES member(id)
);

CREATE TABLE comment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(255),
    created_at datetime,
    modified_at datetime,
    member_id BIGINT,
    board_id BIGINT,
    FOREIGN KEY(member_id) REFERENCES member(id),
    FOREIGN KEY(board_id) REFERENCES board(id)
);

CREATE TABLE heart (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    member_id BIGINT,
    board_id BIGINT,
    FOREIGN KEY(member_id) REFERENCES member(id),
    FOREIGN KEY(board_id) REFERENCES board(id)
);