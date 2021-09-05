CREATE VIEW perfil_artistas AS
SELECT singer.singer AS artista,
        album.album AS album,
        COUNT(followers.user_id) AS seguidores
FROM singer AS singer
INNER JOIN album AS album
ON singer.singer_id = album.singer_id
INNER JOIN followers AS followers
ON album.singer_id = followers.singer_id
GROUP BY `album`, `singer`
ORDER BY `seguidores` DESC, `artista`, `album`;
