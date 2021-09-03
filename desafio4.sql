CREATE VIEW top_3_artistas AS
SELECT Nome AS artista, COUNT(Usuario_ID) AS seguidores FROM SpotifyClone.Seguindo_Artistas AS SA
INNER JOIN SpotifyClone.Artista AS AR
ON AR.Artista_ID = SA.Artista_ID
GROUP BY Nome
ORDER BY seguidores DESC, artista
LIMIT 3;
