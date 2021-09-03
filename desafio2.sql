CREATE VIEW estatisticas_musicais AS
SELECT COUNT(*) AS cancoes, COUNT(DISTINCT Artista_ID) AS artistas, COUNT(DISTINCT Album_ID) AS albuns
FROM SpotifyClone.Cancao;
