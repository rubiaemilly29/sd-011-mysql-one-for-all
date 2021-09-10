CREATE VIEW perfil_artistas AS
SELECT art.nome_artista AS 'artista',
al.nome_album AS 'album',
COUNT(seg.artista_id) AS 'seguidores'
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS al
ON art.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS seg
ON al.artista_id = seg.artista_id
GROUP BY seg.artista_id, al.nome_album
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
