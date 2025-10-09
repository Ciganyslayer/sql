DROP DATABASE IF EXISTS filmadatbazis;
CREATE DATABASE filmadatbazis CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE filmadatbazis;
CREATE TABLE filmek (
  azonosito INT AUTO_INCREMENT PRIMARY KEY,
  cim VARCHAR(150) NOT NULL UNIQUE,
  rendezo VARCHAR(100),
  megjelenesi_ev YEAR,
  hossz INT CHECK (hossz BETWEEN 30 AND 300),
  korhatar ENUM('0', '6', '12', '16', '18'),
  ertekeles FLOAT DEFAULT 5.0
);
CREATE TABLE szineszek (
  azonosito INT AUTO_INCREMENT PRIMARY KEY,
  nev VARCHAR(100) NOT NULL,
  szuletesi_datum DATE,
  nemzetiseg VARCHAR(50) DEFAULT 'magyar',
  aktiv ENUM('igen', 'nem') DEFAULT 'igen',
  regisztracio_idopontja TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DESCRIBE filmek;
SHOW CREATE TABLE szineszek;