CREATE VIEW estatisticas_musicais AS
SELECT
*
FROM
(
SELECT
COUNT(musica_id) AS `cancoes`
FROM
SpotifyClone.Musica
) AS Musica,
(
SELECT
COUNT(artista_id) AS `artistas`
FROM
SpotifyClone.Artista
) AS Artista,
(
SELECT
COUNT(album_id) AS `albuns`
FROM
SpotifyClone.Album
) AS Album;
