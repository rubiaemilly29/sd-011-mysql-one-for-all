-- CREATE VIEW perfil_artistas AS
SELECT art.nome_artista AS 'artista', alb.nome_album AS 'album', COUNT(sa.usuario_id) AS 'seguidores'
FROM SpotifyClone.artista art
INNER JOIN SpotifyClone.album alb ON alb.artista_id = art.id
INNER JOIN SpotifyClone.seguindo_artistas sa ON sa.artista_id = alb.artista_id
GROUP BY `artista`, `album`
ORDER BY `SEGUIDORES` DESC, `artista`, `album`;
