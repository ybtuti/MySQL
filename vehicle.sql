CREATE DATABASE IF NOT EXISTS vehicle;

SHOW DATABASES;

SELECT DATABASE();

USE vehicle;

SELECT DATABASE();

CREATE TABLE owner (
    IDNO INT NOT NULL PRIMARY KEY,
    NAMES VARCHAR(20) NOT NULL,
    DOB DATE
);

CREATE TABLE car (
    REGNO VARCHAR(20) NOT NULL PRIMARY KEY,
    MAKE VARCHAR(10) NOT NULL,
    COLOUR VARCHAR(10),
    PRICE INT NOT NULL,
    IDNO INT NOT NULL,
    FOREIGN KEY (IDNO) REFERENCES owner (IDNO)
);

SHOW TABLES;

SELECT DATABASE();

INSERT INTO
    OWNER (IDNO, NAMES, DOB)
VALUES (
        1021,
        'JIM SMITH',
        '1980-01-11'
    );

INSERT INTO OWNER VALUES ( 1022, 'BOB SMITH', '1981-03-23' );

INSERT INTO
    OWNER (IDNO, NAMES, DOB)
VALUES (
        1040,
        'BOB JONES',
        '1986-12-03'
    ),
    (
        1050,
        'ANN MWANGI',
        '1990-01-12'
    ),
    (
        1055,
        'GRACE WAMBUI',
        '2000-12-02'
    );

SHOW TABLES;

DESC OWNER;

SELECT * FROM OWNER;

SELECT * FROM CAR;

SELECT * FROM CAR ORDER BY PRICE ASC;