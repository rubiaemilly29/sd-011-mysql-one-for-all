CREATE VIEW historico_reproducao_usuarios AS
	SELECT u.first_name AS usuario, m.music_name AS nome
	FROM SpotifyClone.History AS h
	INNER JOIN SpotifyClone.Music AS m ON m.music_id = h.music_id
	INNER JOIN SpotifyClone.User AS u ON u.user_id = h.user_id
	ORDER BY usuario, nome;