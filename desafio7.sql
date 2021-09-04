CREATE VIEW perfil_artistas AS
SELECT s.first_name AS `artista`, a.album_name AS `album`, COUNT(f.user_id) AS seguidores
FROM SpotifyClone.Followers AS f
INNER JOIN SpotifyClone.Singer AS s ON s.singer_id = f.singer_id
INNER JOIN SpotifyClone.Album AS a ON a.singer_id = s.singer_id
GROUP BY `album`, `artista`
ORDER BY seguidores DESC, `artista`;
