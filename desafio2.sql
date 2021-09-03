CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(nome_cancao) AS cancoes,
(
SELECT COUNT(nome_artista)
FROM SpotifyClone.Artistas
) AS artistas,
(
SELECT COUNT(nome_album)
FROM SpotifyClone.Albuns
) AS albuns
FROM SpotifyClone.Cancoes;
