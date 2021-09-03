CREATE VIEW estatisticas_musicais AS
SELECT COUNT(cancao) AS `cancoes`,
(SELECT COUNT(artista) FROM SpotifyClone.Artista) AS `artistas`,
(SELECT COUNT(album) FROM SpotifyClone.Album) AS `albuns`
FROM SpotifyClone.Cancoes;
