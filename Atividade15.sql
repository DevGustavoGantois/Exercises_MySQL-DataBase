CREATE TABLE IF NOT EXISTS Musical;
USE Musical;

CREATE TABLE IF NOT EXISTS Musics(
	id_musics INT AUTO_INCREMENT PRIMARY KEY,
    musics TEXT,
    name_music VARCHAR(5000),
    name_musician VARCHAR(500),
    FOREIGN KEY (id_bands) REFERENCES Bands(id_bands)
);

CREATE TABLE IF NOT EXISTS Bands(
	id_bands INT AUTO_INCREMENT PRIMARY KEY,
    musics TEXT,
    name_band VARCHAR(5000),
    name_musician VARCHAR(500),
    
    FOREIGN KEY(id_musician) REFERENCES Musics(id_musics)
);

SELECT 
	Musics.name_musician AS Musician_Name,
    GROUP_CONCAT(Bands.name_band) AS Bands_Played_In
FROM
	Musics
JOIN
	Bands ON FIND_IN_SET(Musics.id_musics, Bands.musics)
GROUP BY
	Musics.name_musician;