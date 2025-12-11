
CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)
);


INSERT INTO Songs (name, album_id) VALUES
    ('Time', 1),
    ('Money', 1),
    ('Come Together', 2),
    ('New Kid in Town', 3);


SELECT * FROM Songs;


SELECT Songs.name AS song_name, Albums.name AS album_name
FROM Songs
JOIN Albums ON Songs.album_id = Albums.id;


SELECT *
FROM Albums
WHERE year_published BETWEEN 1970 AND 1980;


SELECT Songs.name, Albums.year_published
FROM Songs
JOIN Albums ON Songs.album_id = Albums.id
WHERE Albums.year_published BETWEEN 1970 AND 1980;


SELECT Songs.name, Albums.name
FROM Songs
JOIN Albums ON Songs.album_id = Albums.id
WHERE Albums.name LIKE '%California%';
