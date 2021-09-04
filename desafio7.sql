CREATE VIEW perfil_artistas AS
SELECT a.name AS 'artista',
ab.title AS 'album',
COUNT(u.user_id) AS 'seguidores'
FROM Artist_followers af
INNER JOIN Artist a
INNER JOIN Album ab
INNER JOIN User u
ON af.artist_id = a.artist_id AND af.user_id = u.user_id AND ab.artist_id = a.artist_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
