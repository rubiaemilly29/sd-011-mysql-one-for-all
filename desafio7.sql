CREATE VIEW perfil_artistas AS
SELECT A.nome_do_artista AS 'artista',B.titulo_do_album AS 'album',
(SELECT COUNT(*) FROM SpotifyClone.segue_artista   AS S
WHERE S.artista_id = A.artista_id) AS 'seguidores'
FROM SpotifyClone.artista AS A
INNER JOIN SpotifyClone.album AS B
ON B.artista_id = A.artista_id 
ORDER BY
3 DESC,
1,
2;
