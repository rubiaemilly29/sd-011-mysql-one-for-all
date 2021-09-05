CREATE VIEW cancoes_premium AS
	SELECT ss.name AS `nome`,
	COUNT(*) AS `reproducoes`
	FROM SpotifyClone.songs ss
	INNER JOIN SpotifyClone.history_reproduction sh ON ss.song_id = sh.song_id
	INNER JOIN SpotifyClone.users su ON su.user_id = sh.user_id
	WHERE su.plan_id IN (2,3)
	GROUP BY `nome`
	ORDER BY `nome`;
