CREATE VIEW perfil_artistas AS
SELECT art.ArtistName AS artista,
alb.AlbumName AS album,
COUNT(fol.ArtistID) AS seguidores
FROM artists AS art
INNER JOIN albuns AS alb
ON art.ID = alb.ArtistID
INNER JOIN following AS fol
ON art.ID = fol.ArtistID
GROUP BY fol.ArtistID, alb.AlbumName
ORDER BY seguidores DESC, artista, album;
