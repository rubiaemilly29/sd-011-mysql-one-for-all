CREATE VIEW estatisticas_musicais AS
SELECT COUNT(title) cancoes,
(SELECT COUNT(artista) FROM SpotifyClone.Artistas) artistas,
(SELECT COUNT(album) FROM SpotifyClone.Albuns) albuns
FROM SpotifyClone.Cancoes;
