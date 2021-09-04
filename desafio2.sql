CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT m.music_name) AS cancoes,
COUNT(DISTINCT a.artist_name) AS artistas,
COUNT(DISTINCT al.album_name) AS albuns
FROM SpotifyClone.music AS m
INNER JOIN SpotifyClone.album AS al
ON m.album_id = al.album_id
INNER JOIN SpotifyClone.artist AS a
ON a.artist_id = al.artist_id;
