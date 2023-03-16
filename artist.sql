/*

Artist
In the artist.sql file, write out the code for the following problems:

---Add 3 new artists to the artist table. (It already exists.)

-- Select 10 artists in reverse alphabetical order.

-- Select 5 artists in alphabetical order.

-- Select all artists that start with the word ‘Black’.

-- Select all artists that contain the word ‘Black’.

*/

INSERT INTO artist (name)
VALUES ('Drake'),
('Jadakiss'),
('Fabolous');


SELECT * FROM artist WHERE artist_id < 11
ORDER BY name desc;

SELECT * FROM artist WHERE artist_id < 6;

SELECT * FROM artist WHERE name LIKE 'Black%';

SELECT * FROM artist WHERE name LIKE '%Black%';