USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN name VARCHAR (300))
BEGIN
SELECT
art.artist_name AS 'artista',
alb.album_name AS 'album'
FROM SpotifyClone.artists AS art

INNER JOIN albuns AS alb ON art.artist_id = alb.artist_id
WHERE name = art.artist_name
ORDER BY alb.album_name;

END
DELIMITER $$
-- Hhttps://www.mysqltutorial.org/getting-started-with-mysql-stored-procedures.aspx
-- https://www.sqlshack.com/learn-mysql-the-basics-of-mysql-stored-procedures/
DELIMITER $$
