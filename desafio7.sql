CREATE VIEW perfil_artistas AS
	SELECT sa.name AS `artista`,
	sal.name AS `album`,
	(SELECT COUNT(sf.artist_id)
	FROM SpotifyClone.following_artists sf
	WHERE sf.artist_id = sa.artist_id) AS `seguidores`
	FROM SpotifyClone.artists sa
	INNER JOIN SpotifyClone.albuns sal ON sa.artist_id = sal.artist_id
	ORDER BY `seguidores` DESC, `artista`, `album`;
