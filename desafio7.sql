CREATE VIEW perfil_artistas AS
SELECT AR.Nome AS artista, AL.Titulo AS album, COUNT(SA.Artista_ID) AS seguidores
FROM SpotifyClone.Seguindo_Artistas AS SA
INNER JOIN SpotifyClone.Album AS AL
ON SA.Artista_ID = AL.Artista_ID
INNER JOIN SpotifyClone.Artista AS AR
ON SA.Artista_ID = AR.Artista_ID
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
