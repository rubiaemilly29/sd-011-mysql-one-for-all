CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(cancao) FROM SpotifyClone.cancao) AS cancoes,
(SELECT COUNT(artista) FROM SpotifyClone.artista) AS artistas,
(SELECT COUNT(album) FROM SpotifyClone.album) AS albuns;
