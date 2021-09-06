CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT
Ar.name AS artista,
Al.name AS album,
(
SELECT COUNT(AF.artist_id) FROM SpotifyClone.Artists_Followers AS AF
WHERE AF.artist_id = Ar.artist_id
) AS seguidores
FROM SpotifyClone.Artists AS Ar
INNER JOIN SpotifyClone.Albums AS Al
ON Ar.artist_id = Al.artist_id
ORDER BY seguidores DESC, artista, album;
