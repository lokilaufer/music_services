CREATE TABLE Genre (
genre_id INT PRIMARY KEY,
genre_name VARCHAR(50)
);
CREATE TABLE Artist (
artist_id INT PRIMARY KEY,
artist_name VARCHAR(50),
genre_id INT,
FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);
CREATE TABLE Album (
album_id INT PRIMARY KEY,
album_name VARCHAR(50),
release_year INT
);
CREATE TABLE Album_Artist (
album_id INT,
artist_id INT,
PRIMARY KEY (album_id, artist_id),
FOREIGN KEY (album_id) REFERENCES Album(album_id),
FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
);
CREATE TABLE Track (
track_id INT PRIMARY KEY,
track_name VARCHAR(50),
album_id INT,
FOREIGN KEY (album_id) REFERENCES Album(album_id)
);
CREATE TABLE Compilation (
compilation_id INT PRIMARY KEY,
compilation_name VARCHAR(50),
release_year INT
);
CREATE TABLE Compilation_Track (
compilation_id INT,
track_id INT,
PRIMARY KEY (compilation_id, track_id),
FOREIGN KEY (compilation_id) REFERENCES Compilation(compilation_id),
FOREIGN KEY (track_id) REFERENCES Track(track_id)
);


