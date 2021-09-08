CREATE VIEW perfil_artistas AS
SELECT A.artista AS artista,
Al.album AS album,
COUNT(SA.usuario_id) AS seguidores
FROM Artistas AS A
INNER JOIN Albuns AS Al
  ON Al.artista_id = A.artista_id
INNER JOIN Seguindo_Artistas AS SA
  ON SA.artista_id = Al.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
