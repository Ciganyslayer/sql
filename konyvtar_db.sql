CREATE DATABASE IF NOT EXISTS konyvtar_db CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE konyvtar_db;
CREATE Table IF NOT EXISTS felhasznalok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(255) NOT NULL,
    szerepkor ENUM('tag', 'admin', 'könyvtaros') DEFAULT 'tag',
    tel_szam VARCHAR(30),
    email VARCHAR(255) NOT NULL UNIQUE,
    szuletesi_date DATE NOT NULL,
    szuletesi_place VARCHAR(60) NOT NULL,
    cim VARCHAR(255) NOT NULL,
    stage TINYINT(1) DEFAULT 1 NOT NULL,
    hozzatartozo_tel VARCHAR(30)
);

INSERT INTO felhasznalok (id, nev, szerepkor, tel_szam, email, szuletesi_date, szuletesi_place, cim, stage, hozzatartozo_tel) VALUES(NULL, 'Kovacs David', 'admin', '06-30-476-5438', 'kovdav@gmail.com', '2000-12-16', 'Budapest', 'Kecskemet Bogar u 27', 1, '06-30-123-4567')

SELECT * FROM felhasznalok
SELECT id, nev, hozzatartozo_tel FROM felhasznalok;
SELECT COUNT(*) FROM felhasznalok;
