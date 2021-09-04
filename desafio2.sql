CREATE VIEW estatisticas_musicais AS
SELECT count(cancao_id) AS cancoes,
(SELECT count(artista_id) FROM SpotifyClone.Artistas) AS artistas,
(SELECT count(album_id) FROM SpotifyClone.Albuns) AS albuns
FROM SpotifyClone.Cancoes;
