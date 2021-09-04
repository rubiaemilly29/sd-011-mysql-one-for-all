CREATE VIEW `estatístícas_musicais` AS
SELECT COUNT(*) AS `cancoes`,
(SELECT COUNT(*) FROM spotifyclone.artists) AS `artistas`,
(SELECT COUNT(*) FROM spotifyclone.album) AS `albuns`
FROM songs;
