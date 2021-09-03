CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT art.art_name AS `artista`,
alb.album_name AS `album`,
(SELECT COUNT(*) FROM SpotifyClone.user_follows_artist AS ufa
WHERE ufa.art_id = art.art_id
) AS `seguidores`
FROM SpotifyClone.albums AS alb
INNER JOIN SpotifyClone.artists AS art
ON alb.art_id = art.art_id
ORDER BY `seguidores` DESC, `artista`, `album`;
