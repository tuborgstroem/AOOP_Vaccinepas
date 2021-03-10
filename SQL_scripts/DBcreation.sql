DROP TABLE IF EXISTS test;
DROP TABLE IF EXISTS vaccine;
DROP TABLE IF EXISTS borger;
DROP TABLE IF EXISTS sundhedspersonale;

CREATE TABLE IF NOT EXISTS borger (
	cpr char(10) NOT NULL UNIQUE,
    borger_navn varchar(255) NOT NULL,
    borger_email varchar(255) NOT NULL UNIQUE,
    borger_kode varchar(255) NOT NULL,
    vaccinestatus tinyint NOT NULL,
    PRIMARY KEY (cpr)
);
CREATE TABLE IF NOT EXISTS sundhedspersonale (
	ansat_navn varchar(255) NOT NULL,
    ansatID char(10) NOT NULL UNIQUE,
    stilling varchar(255) NOT NULL,
    ansat_email varchar(255) NOT NULL UNIQUE,
    sp_kode varchar(255) NOT NULL,
    PRIMARY KEY (ansatID)
);

CREATE TABLE IF NOT EXISTS vaccine (
	vaccineID char(12) NOT NULL UNIQUE,
    borgerID char(10) NOT NULL,
    vaccineType varchar(255) NOT NULL,
    vaccineDate datetime NOT NULL DEFAULT current_timestamp,
    EL varchar(255) NOT NULL, /*Ved ikke om denne er nødvendig da vi har ansat ID, som vel er det samme*/
    ansatID char(10) NOT NULL,
    PRIMARY KEY (vaccineID),
    CONSTRAINT fk_vaccine_borger_id
        FOREIGN KEY (borgerID)
        REFERENCES borger(cpr)
        ON DELETE CASCADE,
    FOREIGN KEY (ansatID) REFERENCES sundhedspersonale(ansatID)
);

CREATE TABLE IF NOT EXISTS test (
	testID varchar(12) NOT NULL UNIQUE PRIMARY KEY,
    testType varchar(255),
    borgerID char(10) NOT NULL,
    testResult tinyint NOT NULL,
    testDate datetime NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_test_borger_id
		FOREIGN KEY (borgerID)
        REFERENCES borger(cpr)
        ON DELETE CASCADE
);

