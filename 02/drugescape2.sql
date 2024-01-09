CREATE DATABASE drugescape2;
use drugescape2;

CREATE TABLE member (
id INTEGER PRIMARY KEY ,
name VARCHAR(255),
email VARCHAR(255),
password VARCHAR(255),
picture VARCHAR(255),
role VARCHAR(255));

CREATE TABLE report (
id  INTEGER PRIMARY KEY,
point INTEGER,
accumulated_days INTEGER,
maximum_days INTEGER,
daily_goals INTEGER);

CREATE TABLE management (
id INTEGER PRIMARY KEY ,
stop_drug VARCHAR(255),
exercise VARCHAR(255),
meal VARCHAR(255),
take_medician VARCHAR(255),
report_id INTEGER,
FOREIGN KEY(report_id) REFERENCES report(id)
);

CREATE TABLE donation (
id  INTEGER PRIMARY KEY,
donated_point INTEGER,
report_id INTEGER,
FOREIGN KEY(report_id) REFERENCES report(id));
