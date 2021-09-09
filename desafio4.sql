CREATE VIEW top_3_artistas AS
SELECT art.ArtistName AS artista,
COUNT(fol.ArtistID) AS seguidores
FROM artists AS art
INNER JOIN following AS fol
ON art.ID = fol.ArtistID
GROUP BY art.ID
ORDER BY seguidores DESC, artista
LIMIT 3;
