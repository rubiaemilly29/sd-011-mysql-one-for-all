CREATE VIEW perfil_artistas AS
SELECT A.artista AS artista,
AB.album AS album,
COUNT(SA.usuario_id) AS seguidores
FROM artistas A
INNER JOIN albuns AB ON AB.artista_id = A.artista_id
INNER JOIN seguindo_artistas SA ON SA.artista_id = A.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
