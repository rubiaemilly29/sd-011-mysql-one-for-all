CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(musicas.musica_id) AS cancoes,
COUNT(DISTINCT album.artista_id) AS artistas,
COUNT(DISTINCT musicas.album_id) AS albuns
FROM
SpotifyClone.musicas AS musicas
INNER JOIN
SpotifyClone.albuns AS album ON musicas.album_id = album.album_id;