CREATE VIEW top_3_artistas AS
SELECT
	a.artist_name AS 'artista',
    COUNT(f.artist_id) AS 'seguidores'
  FROM SpotifyClone.follow AS f
  INNER JOIN SpotifyClone.artist AS a ON f.artist_id = a.artist_id
  GROUP BY 1
  ORDER BY 2 DESC, 1
  LIMIT 3; 
