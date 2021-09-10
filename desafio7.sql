create view perfil_artistas as
select
a.nome_artista AS 'artista',
ab.nome_album AS 'album',
COUNT(s.artista_id) AS 'seguidores'
FROM artista AS a
INNER JOIN album AS ab
ON ab.artista_id = a.artista_id
INNER JOIN seguindo AS s
ON s.artista_id = ab.artista_id
GROUP BY s.artista_id, ab.nome_album
ORDER BY seguindo DESC, artista ASC, album ASC;
