use f1_2021;

-- Creates the team table
CREATE TABLE team(
    teamName varchar(255),
    teamHQ varchar(255),
    totalPoints int,
    teamSeasonStanding int,
    teamChampWon int,
    PRIMARY KEY(teamName));

-- Creates the driver table
CREATE TABLE driver(
	driverNum int,
	firstName varchar(255),
    lastName varchar(255),
    birthday varchar(255),
    nationality varchar(255),
    driverPoints int,
    driverSeasonStanding int,
    driverChampWon int,
    teamName varchar(255),
    PRIMARY KEY(driverNum),
    FOREIGN KEY(teamName) REFERENCES team(teamName));

-- Creates the track table
CREATE TABLE track(
	trackNum int,
    trackName varchar(255),
    country varchar(255),
    turns int,
    length_in_miles float,
    PRIMARY KEY(trackNum));
    
-- Creates the race table
CREATE TABLE race(
	raceName varchar(255),
    trackNum int,
    raceDate varchar(255),
    laps int,
    firstPlace int,
    secondPlace int,
    thirdPlace int,
    PRIMARY KEY(raceName),
    FOREIGN KEY(trackNum) REFERENCES track(trackNum),
    FOREIGN KEY(firstPlace) REFERENCES driver(driverNum),
    FOREIGN KEY(secondPlace) REFERENCES driver(driverNum),
    FOREIGN KEY(thirdPlace) REFERENCES driver(driverNum));

