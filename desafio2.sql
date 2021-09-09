CREATE VIEW estatisticas_musicais AS
SELECT
(select count(musica) from musica.SpotifyClone) AS "cancoes",
(select count(artista) from artista.SpotifyClone) as "artistas",
(select count(album) from album.SpotifyClone) as "albuns"
