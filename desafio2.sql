CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT C.cancao) cancoes,
COUNT(DISTINCT A.artista) artistas,
COUNT(DISTINCT AL.album) albuns
FROM SpotifyClone.cancoes C
INNER JOIN SpotifyClone.artistas A
INNER JOIN SpotifyClone.albuns AL;
