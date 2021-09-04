CREATE VIEW
estatisticas_musicais
AS
SELECT
COUNT(song_id) AS "cancoes",
(SELECT COUNT(artist_id) FROM SpotifyClone.artists) AS "artistas",
(SELECT COUNT(album_id) FROM SpotifyClone.album) AS "albuns"
FROM SpotifyClone.songs;
