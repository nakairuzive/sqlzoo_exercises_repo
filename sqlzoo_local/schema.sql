-- All the CREATE statements for all the tables are here in this file

-- World table
DROP TABLE IF EXISTS world;
CREATE TABLE IF NOT EXISTS world(
    name VARCHAR(50),
    continent VARCHAR(60),
    area DECIMAL(10,0),
    population DECIMAL(11,0),
    gdp DECIMAL(14,0),
    capital VARCHAR(60),
    tld VARCHAR(5),
    flag VARCHAR(255),
    wikiref VARCHAR(255)
);


-- Nobel prize winners table
DROP TABLE IF EXISTS nobel;
CREATE TABLE IF NOT EXISTS nobel(
    yr INT,
    subject TEXT,
    winner TEXT
);


-- Goal table
DROP TABLE IF EXISTS goal;
CREATE TABLE IF NOT EXISTS goal(
    game INT,
    team CHAR(3),
    player VARCHAR(100),
    gtime INT
);

-- Team table
DROP TABLE IF EXISTS team;
CREATE TABLE IF NOT EXISTS team(
    id CHAR(3) PRIMARY KEY,
    teamname VARCHAR(50),
    coach VARCHAR(60)
);

-- Player table
DROP TABLE IF EXISTS player;
CREATE TABLE IF NOT EXISTS player(
    team CHAR(3),
    playername VARCHAR(100),
    pos VARCHAR(3)
);

-- Movie table
DROP TABLE IF EXISTS movie;
CREATE TABLE IF NOT EXISTS movie(
    id INT PRIMARY KEY,
    title VARCHAR(70),
    yr DECIMAL(4),
    director INT,
    budget INT,
    gross INT
);

-- Actor table
DROP TABLE IF EXISTS actor;
CREATE TABLE IF NOT EXISTS actor(
    id INT,
    name VARCHAR(30)
);

-- Casting table
DROP TABLE IF EXISTS casting;
CREATE TABLE IF NOT EXISTS casting(
    movieid INT,
    actorid INT,
    ord INT
);


-- Teacher table
DROP TABLE IF EXISTS teacher;
CREATE TABLE IF NOT EXISTS teacher(
    id CHAR(3),
    dept INT,
    name TEXT,
    phone CHAR(4),
    mobile CHAR(12)
);

-- Department table
DROP TABLE IF EXISTS dept;
CREATE TABLE IF NOT EXISTS dept(
    id INT PRIMARY KEY,
    name TEXT
);


-- National Student Survey table
DROP TABLE IF EXISTS nss;
CREATE TABLE IF NOT EXISTS nss(
    ukprn VARCHAR(8),
    institution	VARCHAR(100),
    subject	VARCHAR(60),
    level	VARCHAR(50),
    question	VARCHAR(10),
    A_STRONGLY_DISAGREE	INT(11),
    A_DISAGREE	INT(11),
    A_NEUTRAL	INT(11),
    A_AGREE	INT(11),
    A_STRONGLY_AGREE	INT(11),
    A_NA	INT(11),
    CI_MIN	INT(11),
    score	INT(11),
    CI_MAX	INT(11),
    response	INT(11),
    sample	INT(11),
    aggregate	CHAR(1)
);


-- General Elections table
DROP TABLE IF EXISTS ge;
CREATE TABLE IF NOT EXISTS ge(
    yr CHAR(4),
    firstName TEXT,
    lastName TEXT,
    constituency VARCHAR(9),
    party TEXT,
    votes INT
);

-- Please note that for the COVID 19 table, no table snippet or like to the table was provided on the site. Hence I could not recreate it.ABORT

-- Stops table
DROP TABLE IF EXISTS stops;
CREATE TABLE IF NOT EXISTS stops(
    id INT,
    name CHAR(30)
);

-- Route table
DROP TABLE IF EXISTS route;
CREATE TABLE IF NOT EXISTS route(
    num CHAR(3),
    company CHAR(3),
    pos INT,
    stop INT
);


