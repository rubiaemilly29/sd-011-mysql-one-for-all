CREATE VIEW perfil_artistas AS
SELECT 
A.nome_artista AS `artista`,
Alb.album_nome AS `album`,
COUNT(S.usuario_id) AS `seguidores`
FROM
artista AS A
INNER JOIN
album AS Alb ON A.artista_id = Alb.artista_id
INNER JOIN
seguidores AS S ON A.artista_id = S.artista_id
GROUP BY artista , album
ORDER BY `seguidores` DESC , `artista` , `album` ASC;
